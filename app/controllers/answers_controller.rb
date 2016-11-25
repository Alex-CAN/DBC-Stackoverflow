get '/questions/:question_id/answers/new' do
  @question = Question.find(params[:question_id])
  erb :'/answers/new'
end

post '/answers' do
  @question = Question.find(params[:question_id])
  @answer = @question.answers.new(user_id: current_user.id,
                                  question_id: params[:question_id],
                                  text: params[:answer])
    if @answer.save
      redirect "/questions/#{@question.id}"
    else
      @error = "Did not save properly!"
      erb :'/answers/new'
    end
end
