  require 'spec_helper'

describe User do
  it { should have_many(:answers) }
  it { should have_many(:questions).through(:answers)}

  it { should validate_presence_of(:name) }


  it "must have a unique email" do
    user = User.create(
      name: "Bob",
      age: "12",
      gender: "Male",
      picture_url: "http://fillmurray.com/200/301",
      email: "bob@bob.com",
      password: "password",
      password_confirmation: "password"
      )
    expect( user ).to validate_uniqueness_of(:email)
  end
end
