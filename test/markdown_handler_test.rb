require 'test_helper'

class MarkdownHandler::Test < ActiveSupport::TestCase
  test "registers a template handler" do
    assert_equal(
      MarkdownHandler::Handler,
      ActionView::Template.registered_template_handler(:md)
    )
  end
end

class MarkdownHandlerRailsTest < ActionController::TestCase
  tests PostsController

  test "responds success" do
    get :index, format: :md
    assert_response :success
  end

  test "contains <h1>Posts</h1>" do
    get :index, format: :md
    assert_match /\<h1\>Posts\<\/h1\>/, response.body
  end
end
