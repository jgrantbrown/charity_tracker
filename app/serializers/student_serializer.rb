class StudentSerializer < ActiveModel::Serializer
  attributes :id, :first_name, :last_name, :user_id
  belongs_to :teacher
  has_many :charities
  has_many :pledges
end
