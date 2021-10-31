require "rails_helper"

RSpec.describe Article, type: :model do
  describe "validates article" do
    before do
      @article = create(:article)
    end

    it "validates presence of title" do
      expect(@article.title).to eq("MyString")
    end

  end
end
