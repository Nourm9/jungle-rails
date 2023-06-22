require 'rails_helper'

RSpec.describe User, type: :model do
 describe 'Validation' do
    it 'saves user when required inputs are correct' do
      @user = User.new(name: 'Nour', email: 'nour@aol.com', password: "pass1234", password_confirmation: "pass1234")
      expect(@user).to be_valid
    end

    it 'does''t save user when password and password_confirmation are different' do
      @user = User.new(name: 'Nour', email: 'nour@aol.com', password: "pass1234", password_confirmation: "6789hello")
      @user.save 
      expect(@user.errors.full_messages).to include("Password doesn't match Password Confirmation")
    end

    it 'should provide an error message if password not set' do
      @user = User.new(name: 'Nour', email: 'nour@aol.com', password: nil, password_confirmation: nil)
      @user.save
      expect(@user.errors.full_messages).to include("Password must be filled")
    end

        it 'take a minimun password length' do
      @user = User.new(name: 'Nour.', email: 'nour@aol.com', password: "test", password_confirmation: "test")
      @user.save
      expect(@user.errors.full_messages).to include('Password needs to have minimum of 6 characters')
    end

    it 'should provide an error message if name not set' do
      @user = User.new(name: nil, email: 'nour@aol.com', password: "pass1234", password_confirmation: "pass1234")
      @user.save
      expect(@user.errors.full_messages).to include("Name must be filled")
    end

    it 'should provide an error message if email not set' do
      @user = User.new(name: 'Nour', email: nil, password: "pass1234", password_confirmation: "pass1234")
      @user.save
      expect(@user.errors.full_messages).to include("Email most be filled")
    end 

  end

end

