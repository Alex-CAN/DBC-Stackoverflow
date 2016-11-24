class Answer < ActiveRecord::Base
  validates :user_id, :text, { presence: true }
  belongs_to :user
  belongs_to :question
end
