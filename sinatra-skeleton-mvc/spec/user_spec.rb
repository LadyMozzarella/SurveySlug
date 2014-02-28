require 'spec_helper'

describe User do
  it { should validate_presence_of(:name) }
  it { should validate_presence_of(:email) }
  it { should validate_presence_of(:password) }

  describe "login" do

  end

  describe "signup" do
    let(:user_params) do
      {signup: {
        name: "Devers",
        email: "Ivan@mozzarella.com",
        password: "a1b2"
      }}
    end

    it "should create a new user" do
      expect { post '/users', user_params }.to change(User, :count).by(1)
    end
  end
end
