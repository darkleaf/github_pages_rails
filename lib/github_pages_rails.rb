require "github_pages_rails/engine"
require 'octokit'
require 'redcarpet'
require 'liquid'
require 'meta-tags'

module GithubPagesRails
  mattr_accessor :repository

  # The parent controller all Devise controllers inherits from.
  # Defaults to ApplicationController. This should be set early
  # in the initialization process and should be set to a string.
  mattr_accessor :parent_controller
  @@parent_controller = "::ApplicationController"
end

