class TutorSerializer
  include FastJsonapi::ObjectSerializer
  attributes :name, :speciality, :phonenumber, :email, :admin_id
end
