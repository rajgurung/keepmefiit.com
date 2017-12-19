require 'test_helper'

module Blorgh
  class ArticlesControllerTest < ActionDispatch::IntegrationTest
    include Engine.routes.url_helpers

    setup do
      @article = blorgh_articles(:one)
    end

    test "should get index" do
      get articles_url, as: :json
      assert_response :success
    end

    test "should create article" do
      assert_difference('Article.count') do
        post articles_url, params: { article: { text: @article.text, title: @article.title } }, as: :json
      end

      assert_response 201
    end

    test "should show article" do
      get article_url(@article), as: :json
      assert_response :success
    end

    test "should update article" do
      patch article_url(@article), params: { article: { text: @article.text, title: @article.title } }, as: :json
      assert_response 200
    end

    test "should destroy article" do
      assert_difference('Article.count', -1) do
        delete article_url(@article), as: :json
      end

      assert_response 204
    end
  end
end
