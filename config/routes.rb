GithubPagesRails::Engine.routes.draw do
  get '*id', to: "pages#show"
end
