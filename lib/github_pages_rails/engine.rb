module GithubPagesRails
  class Engine < ::Rails::Engine
    isolate_namespace GithubPagesRails
    config.autoload_paths += %W(#{config.root}/lib)

    config.action_dispatch.rescue_responses.merge! 'Octokit::NotFound' => :not_found

    config.after_initialize do
      ::Liquid::Template.register_tag('meta_tags', MetatagsTag)
    end
  end
end
