class User < ActiveRecord::Base
  has_many :votes, :comments, :questions, :answers

  def password
    @password ||= BCrypt::Password.new(hashed_password)
  end

  def password=(new_password)
    @password = BCrypt::Password.create(new_password)
    self.hashed_password = @password
  end

  def authenticate?(email, password)
    self.password == password && self.email == email
  end
end
