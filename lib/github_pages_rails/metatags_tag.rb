module GithubPagesRails
  class MetatagsTag < Liquid::Tag
    def initialize(tag_name, tags, tokens)
      super
      @metatags = JSON.parse tags
    end

    def render(context)
      controller  = context.registers[:controller]
      controller.send :set_meta_tags, @metatags
      nil
    end

  end
end
