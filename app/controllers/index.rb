get '/' do 
  @questions = Question.all
  erb :index
end

get '/show' do 
  erb :show
end
