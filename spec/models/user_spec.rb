require 'rails_helper'

RSpec.describe User, type: :model do

  describe 'Validations' do
    it "is valid with valid user attributes" do
      @user = User.create
      @user.first_name = 'Bill'
      @user.last_name = 'Withers'
      @user.email = 'example@ex.com' 
      @user.password = '11characters'
      @user.password_confirmation = @user.password
      @user.save
      expect(@user).to be_valid
    end  
  end