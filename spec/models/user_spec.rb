require 'rails_helper'

RSpec.describe User, type: :model do

  describe 'Validations' do
    it "It must be created with a password and password_confirmation fields" do
      @user = User.new(name: "Peter", email: "test@test.com", password: "111111", password_confirmation: "111111")
      @user.save!
      expect(@user).to be_present
    end
    it "should not save without matching passwords" do
      @user = User.new(name: "Peter", email: "test@test.com", password: "111111", password_confirmation: "111123")
      @user.save
      expect(@user.errors.full_messages).to include("Password confirmation doesn't match Password")
    end
    it "should not save if password = nil" do
      @user = User.new(name: "Peter", email: "test@test.com", password: nil, password_confirmation: "111111")
      @user.save
      expect(@user.errors.full_messages).to include("Password can't be blank")
    end
    it "test if email thats case sensitive" do
      @user1 = User.new(name: "Peter", email: "test@test.com", password: "111111", password_confirmation: "111111")
      @user2 = User.new(name: "Peter", email: "TEST@test.com", password: "111111", password_confirmation: "111111")
      @user1.save
      @user2.save
      expect(@user2.id).not_to be_present
    end
  end

  describe '.authenticate_with_credentials' do
    # examples for this class method here
  end

end
