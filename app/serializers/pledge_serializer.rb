class PledgeSerializer < ActiveModel::Serializer
  attributes :id, :user_id, :amount, :comments
  has_many :comments

end
