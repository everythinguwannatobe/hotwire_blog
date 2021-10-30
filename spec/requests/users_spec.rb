require "rails_helper"

RSpec.describe "Users", type: :request do
  describe "GET /show" do
    it "returns http success" do
      user = create(:user)
      login_as(user)
      get user_url(user.slug)
      expect(response).to have_http_status(:success)
    end
  end

  describe "GET /edit" do
    it "returns http success" do
      user = create(:user)
      login_as(user)
      get edit_user_registration_url
      expect(response).to have_http_status(:success)
    end
  end
end
