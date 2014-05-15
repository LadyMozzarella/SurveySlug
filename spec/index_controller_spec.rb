require 'spec_helper'

describe "IndexController" do
  let(:user) { User.create(name: 'bobo', email: 'bob@dbc.com', password: '1234') }
  describe 'when logged in get all surveys' do
    it 'should display all the surveys for a user' do
      session = {
        'rack.session' => { id: 1}
      }
      get "/users/#{user.id}/surveys","",session
      expect(last_response).to be_ok
    end
  end

  describe 'get survey page' do
    let(:survey) { Survey.create(name: 'My Survey', user_id: user.id) }
    it 'should display page to answer survey' do
      session = {
        'rack.session' => { id: 1}
      }
      get "/surveys/#{survey.id}/responses/new","",session
      expect(last_response.body).to include('Submit Survey')
    end
  end

end


