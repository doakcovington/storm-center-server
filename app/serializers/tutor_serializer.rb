class TutorSerializer
  include FastJsonapi::ObjectSerializer
  attributes :name, :speciality, :phonenumber, :email
end
