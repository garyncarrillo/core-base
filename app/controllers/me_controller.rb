class MeController < ApplicationController
  def update
    user = current_user
    if user.update(me_params)
      render json: { me: UserSerializer.new(user) }, status: 200
    else
      render json: { errors: user.errors.messages }, status: 406
    end
  end

  def subscribe_newsletter
    user = current_user
    if user.update(is_subscribed_newsletter: true)
      render json: { me: UserSerializer.new(user) }, status: 200
    else
      render json: { errors: user.errors.messages }, status: 406
    end
  end

  def remove_newsletter
    user = current_user
    if user.update(is_subscribed_newsletter: false)
      render json: { me: UserSerializer.new(user) }, status: 200
    else
      render json: { errors: user.errors.messages }, status: 406
    end
  end

  def invite_friend
    email = params[:email]
    InviteMailer.send_email(email).deliver_now
  end

  def treatments
    render json: { treatments: UsersTreatmentSerializer.new(UsersTreatment.where(user_id: current_user.id),
      {
        include: [:user, :assessment_type]
      }
    ) }, status: 200
  end

  def profile
    assessment_programs = AssessmentsUser.where('user_id = :user_id and ( assessment_id = 5 or assessment_id= 16 or assessment_id = 17) and answer = true ',  { user_id: current_user.id })
    assessment_types_4 = AssessmentsUser.where('user_id = :user_id and  assessment_id = 4 and answer = true ',  { user_id: current_user.id })

    counts = AssessmentsUser
    .joins('inner join assessments on assessments_users.assessment_id = assessments.id inner join assessment_types on assessment_types.id = assessments.assessment_type_id')
    .select('assessment_types.id, assessment_types.name, assessments_users.answer, count(assessments_users.id) as count')
    .where('user_id = :user_id and assessments_users.answer = true', { user_id: current_user.id })
    .group('assessment_types.id, assessment_types.name, assessments_users.answer')
    .order('count(assessments_users.id) desc')

    if  assessment_programs.length() == 0 && assessment_types_4.length() == 0 && counts.length() == 0
      render json: { error: 'please complete the assessment ' }, status: 406
    end

    if assessment_programs.length() > 0
      assessment_types = AssessmentType.all
      # assign all treatment
      current_user.remove_treatments

      assessment_types.each do |assessment_type|
        current_user.assign_treatment(eassessment_type.id)
      end
    else
      # assign maximus treatment
      position = 0
      current_user.remove_treatments

      counts.each do |element|

        if position == 0
          first_assessment_type_count =  element.count
          current_user.assign_treatment(element.id)
        else
          if element.count == first_assessment_type_count
            current_user.assign_treatment(element.id)
          else
            return
          end
        end
      end

      if assessment_types_4.length() > 0
        # assign additional treatment
        current_user.assign_treatment(4)
      end
    end
  end

  def me_params
    params.require(:me).permit(
     :email,
     :first_name,
     :last_name,
     :job_title,
     :age,
     :sex
    )
  end
end
