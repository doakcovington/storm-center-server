class Api::V1::EventsController < ApplicationController
  
  def index

  end

  def show

  end


  def create

  end

  def destroy

  end

  private

  def events_params
    params.require(:event).permit(:name, :description, :date, :location, :spaces, :tutor_id)
  end

end
