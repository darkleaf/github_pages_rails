require_dependency "github_pages_rails/application_controller"

module GithubPagesRails
  class PagesController < ApplicationController
    def show
      result = Octokit.contents("darkleaf/github_pages_rails_example", path: 'about.md.liquid')
      content64 = result[:content]
      content = Base64.decode64(content64)
      render text: content
    end
  end
end
