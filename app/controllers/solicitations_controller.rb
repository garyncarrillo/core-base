class SolicitationsController < ApplicationController
  def create
    solicitation = Solicitation.new(solicitation_params)

    if solicitation.save
      render json: { solicitation: SolicitationSerializer.new(solicitation,
        {
          include: [:pccsd_type]
        }
      )}, status: 200
    else
      render json: { errors: solicitation.errors.messages }, status: 406
    end
  end

  def update
    solicitation = Solicitation.find(params[:id])

    if solicitation.update(solicitation_params)
      render json: { solicitation: SolicitationSerializer.new(solicitation) }, status: 201
    else
      render json: { errors: solicitation.errors.messages }, status: 406
    end
  end

  def destroy
    solicitation = Solicitation.find(params[:id])

    begin
      solicitation.destroy
    rescue => e
      render json: { errors: {base: I18n.t(:cant_be_deleted)} }, status: 406
    end
  end

  def index
    solicitations = Solicitation.all
    render json: { solicitations: SolicitationSerializer.new(solicitations) }, status: 200
  end

  def show
    solicitation = Solicitation.find(params[:id])
    render json: { solicitation: SolicitationSerializer.new(solicitation) }, status: 200
  end

  private

  def solicitation_params
    params.require(:solicitation).permit(
     :description,
     :pccsd_type_id,
    )
  end
end
