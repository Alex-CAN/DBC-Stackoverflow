class Answer < ActiveRecord::Base
  has_many :comments
  # has_many :votes, polymorphic: true
end
