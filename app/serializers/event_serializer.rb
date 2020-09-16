class EventSerializer
  include FastJsonapi::ObjectSerializer
  attributes :name, :icon_url, :description, :date, :location, :spaces, :time, :tutor_id, :tutor
end
