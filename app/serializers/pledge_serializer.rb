class PledgeSerializer < ActiveModel::Serializer
  attributes :id, :user_id, :amount, :comments, :student_id
  has_many :comments

end
