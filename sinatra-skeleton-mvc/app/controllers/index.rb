
## link to login or sign up
## if logged in link to create survey
get '/' do
  erb :index
end

## This is the route/page to create the survey
get '/survey/new' do
  erb :create_survey
end

## This will add the survey that the user created to the DB
post '/surveys' do
  puts "-------------------------"
  @survey = Survey.create(name: params[:name], user_id: current_user)
  @survey.questions.create(prompt: params[:prompt])
  params[:option].each do |option|
    @question.options.create(name: option)
  end

end

## This is a placeholder for the survey link
get '/responses/new' do
end

## This will store the user responses from the form to the DB
post '/responses' do
end

## This is the login route for users to log in or create an account
get '/login' do
end

## This will add new user to the DB and/or create a session
post '/users' do

end

## This will create a new session
post '/login' do
  user = User.find_by_email(params[:email])
  redirect '/login' unless user && user.password == params[:password]
  session[:id] = user.id
  redirect '/'
end

post '/logout' do
  session.clear
  redirect '/'
end

## this will display the link and the stats for the individual survey
get '/surveys/:id' do
  @survey = Survey.find(params[:id])
  erb :survey_view
end

## Displays all the surveys available.
get '/users/:id/surveys' do
  @user = User.find(params[:id])
  erb :survey_list
end

## This will thank you for taking the survey and give you a link to go
## home or create a survey
get '/thankyou' do
end

