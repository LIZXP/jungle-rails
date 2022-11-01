require 'rails_helper'

RSpec.describe User, type: :model do

  describe 'Validations' do
    it "It must be created with a password and password_confirmation fields" do
      @user = User.new(name: "Peter", email: "test@test.com", password: "111111", password_confirmation: "111111")
      @user.save!
      expect(@user).to be_present
    end
  end

  describe '.authenticate_with_credentials' do
    # examples for this class method here
  end

end
