module GithubPagesRails
  class PagesController < GithubPagesRails.parent_controller.constantize
    def show
      result = Octokit.contents(GithubPagesRails.repository, path: "#{params[:id]}.md")

      p result

      content64 = result[:content]
      content = Base64.decode64(content64)

      rendered_liquid = render_liquid(content)

      rendered = render_md(rendered_liquid)

      @content = rendered
    end

    def render_liquid(content)
      template = Liquid::Template.parse(content)
      template.render( { }, { registers: {controller: self}})
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
