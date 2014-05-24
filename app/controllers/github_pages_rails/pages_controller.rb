require_dependency "github_pages_rails/application_controller"

module GithubPagesRails
  class PagesController < ApplicationController
    def show
      result = Octokit.contents("darkleaf/github_pages_rails_example", path: 'about.md.liquid')
      content64 = result[:content]
      content = Base64.decode64(content64)

      rendered_liquid = render_liquid(content)

      rendered = render_md(rendered_liquid)

      render text: rendered
    end

    def render_liquid(content)
      template = Liquid::Template.parse(content)
      template.render({})
    end

    def render_md(content)
      renderer = Redcarpet::Render::HTML
      options = {
        autolink: true,
        fenced_code_blocks: true
      }
      markdown = Redcarpet::Markdown.new renderer, options
      markdown.render(content)
    end
  end
end
