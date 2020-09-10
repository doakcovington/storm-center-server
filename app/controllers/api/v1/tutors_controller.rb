class Api::V1::TutorsController < ApplicationController
  def index
    tutors = Tutor.all 
    render json: TutorSerializer.new(tutors)
  end

  def show
    tutor = Tutor.find(params[:id])
    render json: TutorSerializer.new(tutor)
  end

  def create
    tutor = Tutor.new(tutor_params)
    if tutor.save
      render json: TutorSerializer.new(tutor)
    else
      render json: tutor.errors, status: unprocessable_entity
    end
  end

  def destroy
    tutor = Tutor.find(params[:id])
    tutor.destroy
  end

  private

  def tutor_params
    params.require(:tutor).permit(:name, :speciality, :phonenumber, :email)
  end
end
