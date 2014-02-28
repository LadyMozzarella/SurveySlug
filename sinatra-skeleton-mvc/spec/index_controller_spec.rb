require 'spec_helper'

describe "IndexController" do
  let(:user) { User.create(name: 'bobo', email: 'bob@dbc.com', password: '1234') }
  describe 'get all surveys' do
    it 'should display all the surveys for a user' do
      get "/users/#{user.id}/surveys"
      expect(last_response).to be_ok
    end
  end

<<<<<<< HEAD
  describe 'create survey' do
    let(:user){User.create(name: "Darren", email: "dg@gmail.com", password: "password")}
    let(:survey){Survey.create(name: "Survey", user_id: user.id)}
    let(:question){Question.create(prompt: "Question", survey_id: survey.id)}
    let(:option1){Option.create(name: "Option1", question_id: question.id)}
    let(:option2){Option.create(name: "Option2", question_id: question.id)}

    it 'should create new survey with questions and options' do
      post '/surveys', {user_id: user.id, name: survey.name, prompt: question.prompt, option: [option1.name, option2.name]}
      expect(last_response).to be_ok
    end
  end

=======
>>>>>>> efef08856e21ab63e0ffa188eacf9fc1d7b990c4
  describe 'get survey page' do
    let(:survey) { Survey.create(name: 'My Survey', user_id: user.id) }
    it 'should display page to answer survey' do
      get "/surveys/#{survey.id}"
      expect(last_response.body).to include('Surveys')
    end
  end

  # describe 'get all bands' do
  #   it 'should see all bands' do
  #     get "/bands"
  #     expect(last_response).to be_ok
  #   end
  # end

  # describe 'create a new band' do
  #   band_name = 'chromatics'
  #   new_params = {
  #       name: band_name
  #     }
  #   new_session = {
  #     'rack.session' => {
  #       # Could preload stuff into the session here...
  #     }
  #   }
  #   it 'should add a new band' do
  #     expect{
  #       post('/bands', new_params, new_session)
  #     }.to change(Band, :count).by(1)
  #     last_response.should be_ok
  #     last_response.body.should == band_name
  #   end
  # end
end
