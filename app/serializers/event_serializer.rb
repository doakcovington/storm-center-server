class EventSerializer
  include FastJsonapi::ObjectSerializer
  attributes :name, :description, :date, :location, :spaces, :tutor_id, :tutor 
end
