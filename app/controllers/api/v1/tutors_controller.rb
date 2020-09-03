class Api::V1::TutorsController < ApplicationController
  def index

  end

  def show

  end

  def create

  end

  def destroy

  end

  private

  def tutor_params
    params.require(:tutor).permit(:name, :speciality, :phonenumber, :email)
  end
end
