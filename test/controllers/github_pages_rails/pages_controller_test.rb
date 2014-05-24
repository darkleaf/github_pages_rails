require 'test_helper'

module GithubPagesRails
  class PagesControllerTest < ActionController::TestCase

    test "should show page" do
      get :show, id: "sm_page", use_route: :github_pages_rails
      assert_response :success
    end

  end
end
