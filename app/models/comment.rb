class Comment < ApplicationRecord
  belongs_to :user
  belongs_to :pledge

end
