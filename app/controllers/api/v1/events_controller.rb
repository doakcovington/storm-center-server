class Api::V1::EventsController < ApplicationController
  
  def index
    events = Event.all 
    render json: EventSerializer.new(events)
  end

  def show
    event = Event.find(params[:id])
    render json: EventSerializer.new(event)
  end

  def create
    event = Event.new(event_params)
    if event.save
      render json: EventSerializer.new(event)
    else 
      render json: event.errors, status: unprocessable_entity
    end
  end

  def destroy
    event = Event.find(params[:id])
    unless event.nil?
      event.destroy
      render json: event #fixed end of JSON error
    else
      render json: {error: "Event Not Found"}, status: 404
    end
  end

  private

  def event_params
    params.require(:event).permit(:name, :description, :date, :location, :spaces, :tutor_id)
  end

end
