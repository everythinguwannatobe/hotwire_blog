require "rails_helper"

RSpec.describe User, type: :model do
  describe "User name" do
    it "test name_of_person provides first_name" do
      user = create(:user)
      expect(user.name.first).to eq "Test"
    end

    it "test name_of_person provides last_name" do
      user = create(:user)
      expect(user.name.last).to eq "User"
    end
  end

  describe "User slug by friendly_id" do
    it "test friendly_id produces valid slug" do
      user = create(:user)
      expect(user.slug).to eq "test-user"
    end
  end
end
