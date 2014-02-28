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
