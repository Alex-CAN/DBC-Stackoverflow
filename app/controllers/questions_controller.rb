#Form to ask a new question
get '/questions/new' do
  erb :'/questions/new'
end

#Posting from form to create a new question.
post '/questions' do
  @question = Question.new(user_id: current_user.id,
                           text: params[:question]  )
  if @question.save
    redirect '/'
  else
    @error = "This did not save properly make sure you have inputted text."
    erb :'/questions/new'
  end
end

#show a specific question
get '/questions/:id' do
  @question = Question.find(params[:id])
  erb :'/questions/show'
end
