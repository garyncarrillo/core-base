class SpecialistsController < ApplicationController
  def index
    specilists = Specialist.all
    render json: { specilists: SpecialistSerializer.new(specilists) }, status: 200
  end

  def show
    specilist = Specialist.find(params[:id])
    render json: { specilist: SpecialistSerializer.new(specilist) }, status: 200
  end

  def create
    specilist = Specialist.new(specilist_params)

    if specilist.save
      render json: { specilist: SpecialistSerializer.new(specilist) }, status: 200
    else
      render json: { errors: specilist.errors.messages }, status: 406
    end
  end

  def update
    specilist = Specialist.find(params[:id])

    if specilist.update(specilist_params)
      render json: { specilist: SpecialistSerializer.new(specilist) }, status: 201
    else
      render json: { errors: specilist.errors.messages }, status: 406
    end
  end

  private

  def specilist_params
    params.require(:specialist).permit(
     :email,
     :first_name,
     :last_name,
     :speciality,
     :phone_number,
     :address
    )
  end
end
