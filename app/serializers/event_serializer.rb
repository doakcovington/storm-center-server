class EventSerializer
  include FastJsonapi::ObjectSerializer
  attributes :name, :description, :date, :location, :spaces, :time, :tutor_id, :tutor
end
