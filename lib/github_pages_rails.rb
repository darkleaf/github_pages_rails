require "github_pages_rails/engine"
require 'octokit'
require 'redcarpet'
require 'liquid'
require 'meta-tags'

module GithubPagesRails
  mattr_accessor :repository
end
