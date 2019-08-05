require 'rails_helper'

RSpec.describe User, type: :model do
  it "creates a new user" do
    user = User.create!(email: "aa1@example.com", password: "123testing1", password_confirmation: "123testing1", username: "alice")
      expect(user.username).to eq("alice")
      expect(user.email).to eq("aa1@example.com")
  end
end