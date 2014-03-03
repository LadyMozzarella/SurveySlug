require 'spec_helper'

describe "IndexController" do
  let(:user) { User.create(name: 'bobo', email: 'bob@dbc.com', password: '1234') }
  describe 'get all surveys' do
    it 'should display all the surveys for a user' do
      get "/users/#{user.id}/surveys"
      expect(last_response).to be_ok
    end
  end

  describe 'get survey page' do
    let(:survey) { Survey.create(name: 'My Survey', user_id: user.id) }
    it 'should display page to answer survey' do
      get "/surveys/#{survey.id}"
      expect(last_response.body).to include('Surveys')
    end
  end

  # describe 'thank you page' do
  #   before(:all) do
  #     ivan = User.create(name: "Ivan", email: "is@gmail.com", password: "password")
  #     post '/login', {user_id: ivan.id, name: ivan.name, email: ivan.email, password: ivan.password}
  #   end

  #   it 'should exist' do
  #     p last_response
  #     get '/thankyou'
  #     expect(last_response).to be_ok
  #   end
  # end

  # Same goes for this RSPEC test.
  # describe 'create survey' do
  #   let(:user){User.create(name: "Darren", email: "dg@gmail.com", password: "password")}
  #   let(:survey){Survey.create(name: "Survey", user_id: user.id)}
  #   let(:question){Question.create(prompt: "Question", survey_id: survey.id)}
  #   let(:option1){Option.create(name: "Option1", question_id: question.id)}
  #   let(:option2){Option.create(name: "Option2", question_id: question.id)}

  #   it 'should create new survey with questions and options' do
  #     post '/surveys', {user_id: user.id, name: survey.name, prompt: question.prompt, option: [option1.name, option2.name]}
  #     expect(last_response).to be_ok
  #   end
  # end
end
