require 'test_helper'

module GithubPagesRails
  class PagesControllerTest < ActionController::TestCase
    test "get show" do
      page_file = 'about.md'
      about_md = JSON.parse(open_fixture(page_file).read)
      repo_path = GithubPagesRails.repository
      api_url = "https://api.github.com/repos/#{repo_path}/contents/#{page_file}"

      stub = stub_request(:get, api_url).to_return(status: 200, body: about_md)

      get :show, id: 'about', use_route: :github_pages_rails

      assert_requested stub
      assert_response :success
    end
  end
end
