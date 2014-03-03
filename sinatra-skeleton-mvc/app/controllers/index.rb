get '/' do
  erb :index
end

get '/surveys/new' do
  redirect '/' unless logged_in?
  erb :create_survey
end

post '/surveys' do
  survey = Survey.create(name: params[:name], user_id: current_user.id)
  params[:questions].each do |questionParam|
    question = survey.questions.create(prompt: questionParam[:prompt])
    questionParam[:option].each do |option|
      question.options.create(name: option)
    end
  end
 redirect "/surveys/#{survey.id}"
end

get '/surveys/:id/responses/new' do
  redirect '/' unless logged_in?
  @survey = Survey.find(params[:id])
  erb :complete_survey
end

post '/responses' do
  option_ids = params.map {|question, option_id| option_id}
  option_ids.each do |option_id|
    current_user.responses.create(option_id: option_id)
  end
  redirect '/thankyou'
end

get '/login' do
  erb :login_form
end

post '/users' do
  user = User.create(params[:signup])
  session[:id] = user.id
  redirect '/'
end

post '/login' do
  user = User.find_by_email(params[:email])
  redirect '/login' unless user && user.authenticate_password(params[:password])
  session[:id] = user.id
  redirect '/'
end

get '/logout' do
  session.clear
  redirect '/'
end

get '/surveys/:id' do
  redirect '/' unless logged_in?
  @survey = Survey.find(params[:id])
  erb :survey_results
end

get '/users/:id/surveys' do
  redirect '/' unless logged_in?
  @user = User.find(params[:id])
  erb :survey_list
end

get '/thankyou' do
  redirect '/' unless logged_in?
  erb :thankyou
end

