class AdminSerializer
  include FastJsonapi::ObjectSerializer
  attributes :name, :email, :description, :date, :location, :spaces, :time, :tutor_id, :tutor
end