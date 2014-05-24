require 'test_helper'

module GithubPagesRails
  class PagesControllerTest < ActionController::TestCase
    test "get show" do
      get :show, id: 'some-page', use_route: :github_pages_rails
      assert_response :success
    end
  end
end
