require 'test_helper'

class ArticlesControllerTest < ActionController::TestCase


  context "on GET to add a :new article" do
    setup do
      get :new
    end
    should assign_to(:article)
    should respond_with(:success)
    should render_template(:new)
    should_not set_the_flash
  end

  context "on POST to :create an article" do
    setup do
      @article = Factory(:article)
      post :create, "article" => {:title => @article.title, :body => @article.body }
    end

    should assign_to(:article)
    should "have the entered title" do
      assert_equal @article.title, assigns(:article).title
    end

    should "have the entered text body" do
      assert_equal @article.body, assigns(:article).body
    end
    should_not set_the_flash

    #should redirect_to(articles_path)
  end

  context "on GET to the articles :index" do
    setup do
      get :index
    end

    should assign_to(:articles)
    should respond_with(:success)
    should render_template(:index)
  end

  context "on GET to :show the article" do
    setup do
      @article = Factory(:article, :id => 1)
      get :show, :id => @article.id
    end

    should assign_to(:article)
    should respond_with(:success)
    should render_template(:show)
  end

end
