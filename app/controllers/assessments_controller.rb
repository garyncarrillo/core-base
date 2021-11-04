class AssessmentsController < ApplicationController
  def index
    assessments_users = AssessmentsUser.where(user_id: current_user.id)
    render json: { assessments_users:  AssessmentsUserSerializer.new(assessments_users) }, status: 200
  end

  def answer
    assessments_user = AssessmentsUser.find_by(
      user_id: current_user.id,
      id: params[:assessment_id]
    )
    
    if assessments_user.update(answer: params[:assessment][:answer])
      render json: { assessments_user: AssessmentsUserSerializer.new(assessments_user) }, status: 200
    else
      render json: { errors: assessments_user.errors.messages }, status: 406
    end
  end

  private

  def assessment_params
    params.require(:assessment).permit(
      :answer
    )
  end
end
