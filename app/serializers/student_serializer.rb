class StudentSerializer < ActiveModel::Serializer
  attributes :id, :first_name, :last_name
  belongs_to :teacher
end
