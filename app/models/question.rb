class Question < ActiveRecord::Base
  validates :user_id, :text, { presence: true }
  belongs_to :user
  has_many :answers
end
