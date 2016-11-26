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


comment_options = [Answer, Question]
100.times do
  Comment.create!(  :text => Faker::Hipster.sentence,
                    :user_id => rand(1..100),
                    :commentable_id => rand(1..100),
                    :commentable_type => comment_options.sample)
end


vote_options = [Answer, Question, Comment]
100.times do
  Vote.create!(     :user_id => rand(1..100),
                    :upvote => 1,
                    :votable_id => rand(1..100),
                    :votable_type => vote_options.sample)
end
