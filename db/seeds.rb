require 'faker'

100.times do
  User.create!( :name => Faker::Name.name,
                :email      => Faker::Internet.email,
                :password   => 'password' )
end

100.times do
  Answer.create!( :text => Faker::ChuckNorris.fact,
                  :best_answer => false,
                  :user_id => rand(1..100),
                  :question_id => rand(1..100))
end

100.times do
  Question.create!( :text => Faker::Hipster.sentence,
                    :user_id => rand(1..100))
end
