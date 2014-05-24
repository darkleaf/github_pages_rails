Rails.application.routes.draw do

  mount GithubPagesRails::Engine => "/github_pages_rails"
end
