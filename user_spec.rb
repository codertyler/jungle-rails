require 'rails_helper'

RSpec.describe User, type: :model do

  describe 'Validations' do
    it 'returns true if all fields are filled' do 
      @user = User.create(
        first_name: "Tyler", 
        last_name: "Test", 
        email:"tyler@test.com",
        password:"testest",
        password_confirmation:"testest")
    expect(@user.save).to be true
    end

    it "return false if password confirmation different from original" do
      @user = User.create(
        first_name: "Tyler", 
        last_name: "test", 
        email:"tyler@test.com",
        password:"testest",
        password_confirmation:"nottest")
      expect(@user.save).to be false
    end

    it "should return false if email exists not case sensitive" do
    @user1 = User.create(
        first_name: "Angela", 
        last_name: "Yu", 
        email:"tyler@test.com",
        password:"12345",
        password_confirmation:"12345")
      @user2 = User.create(
        first_name: "Angelaa_dummy", 
        last_name: "Yu", 
        email:"ANGELA@TEST.com",
        password:"12345",
        password_confirmation:"12345")
      expect(@user2.save).to be false
    end

    it "should return false if there is no first name" do
      @user = User.create(
        first_name: nil, 
        last_name: "test", 
        email:"Tyler_1@test.com",
        password:"12345",
        password_confirmation:"12345")
        expect(@user.save).to be false
    end

    it "should return false if there is no last name" do
      @user = User.create(
        first_name: "tester", 
        last_name: nil, 
        email:"Tyler_2@test.com",
        password:"12345",
        password_confirmation:"12345")
        expect(@user.save).to be false
    end

    it "should return false if there is no email" do
      @user = User.create(
        first_name: "Tyler  ", 
        last_name: "As", 
        email: nil,
        password:"12345",
        password_confirmation:"12345")
        expect(@user.save).to be false
    end
  end
end