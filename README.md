github_pages_rails
==================

TODO
====

1. создать пустой rails engine http://guides.rubyonrails.org/engines.html

   выполни: rails plugin new github_pages_rails --mountable 
   
2. pages controller:
    ```ruby
    #READ: http://guides.rubyonrails.org/routing.html  #3.11 Route Globbing and Wildcard Segments
    get '*path', to: 'pages#show' # routing
    @path = params[:path] #=> /about # GithubPagesRails::PagesController#show
    ```
  
    view:
    ```haml
    = @path
    ```
  
    tests: разобраться с dummy
3. прикрутить https://github.com/octokit/octokit.rb
   
   извлекать из репозитория текст файла, лежащего в @path

   и просто рендерить его
4. прикрутить опциональную поддержку markdown

    ```ruby
    # helper
    def process_content(content) 
      if defined? Redcarpet 
        markdown = Redcarpet::Markdown.new(Redcarpet::Render::HTML, autolink: true, tables: true)
        markdown.render(content)
      else
        content
      end
    end
    ```
5. поддержка локалей: запросили /about, а найдется или repo/about.md или repo/about.ru.md


@path нужна для простановки заголовков;
в основном приложении можно будет переопределить вьюху и написать
```haml
- title t(@path.gsub('/', '.'))
= markdown @content
```
    
  
