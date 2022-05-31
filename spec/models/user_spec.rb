require 'rails_helper'

describe User do
  it { should validate_confirmation_of :password }
  it { should validate_presence_of :email }
  
  it "should show if a user is an admin" do
    user = User.create({:email => "user@example.com", :password => "password", :password_confirmation => "password"})
    user.save
    expect(user.admin("false")).to(eq(false))
    expect(user.admin("true")).to(eq(true))
  end
end