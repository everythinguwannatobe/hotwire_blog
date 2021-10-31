require "rails_helper"

RSpec.describe "/articles", type: :request do
  before do
    @article = create(:article)
  end

  describe "GET /index" do
    it "renders a successful response" do
      get articles_url
      expect(response).to be_successful
    end
  end

  describe "GET /show" do
    it "renders a successful response" do
      get article_url(@article)
      expect(response).to be_successful
    end
  end

  describe "GET /new" do
    it "renders a successful response" do
      get new_article_url
      expect(response).to be_successful
    end
  end

  describe "GET /edit" do
    it "render a successful response" do
      get edit_article_url(@article)
      expect(response).to be_successful
    end
  end

  describe "POST /create" do
    context "with valid parameters" do
      it "creates a new Article" do
        expect {
          post articles_url, params: {article: {title: @article.title, body: @article.body, user_id: @article.user_id}}
        }.to change(Article, :count).by(1)
      end

      it "redirects to the created article" do
        post articles_url, params: {article: {title: @article.title, body: @article.body, user_id: @article.user_id}}
        expect(response).to redirect_to(article_url(Article.last))
      end
    end

    context "with invalid parameters" do
      it "does not create a new Article" do
        expect {
          post articles_url, params: {article: {title: ""}}
        }.to change(Article, :count).by(0)
      end

      it "renders a successful response (i.e. to display the 'new' template)" do
        post articles_url, params: {article: {title: ""}}
        expect(new_article_url).not_to redirect_to(new_article_url)
      end
    end
  end

  describe "PATCH /update" do
    context "with valid parameters" do
      it "updates the requested article" do
        patch article_url(@article), params: {article: {title: "New Title", body: @article.body, user_id: @article.user_id}}
        @article.reload
        expect(@article.title).to eq("New Title")
      end

      it "redirects to the article" do
        patch article_url(@article), params: {article: {title: "New Title", body: @article.body, user_id: @article.user_id}}
        @article.reload
        expect(response).to redirect_to(article_url(@article))
      end
    end

    context "with invalid parameters" do
      it "renders a successful response (i.e. to display the 'edit' template)" do
        patch article_url(@article), params: {article: {title: "", body: @article.body, user_id: @article.user_id}}
        expect(response).not_to redirect_to(edit_article_url(@article))
      end
    end
  end

  describe "DELETE /destroy" do
    it "destroys the requested article" do
      expect {
        delete article_url(@article)
      }.to change(Article, :count).by(-1)
    end

    it "redirects to the articles list" do
      delete article_url(@article)
      expect(response).to redirect_to(articles_url)
    end
  end
end
