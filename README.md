github_pages_rails
==================


TODO
====

1. создать пустой rails engine http://guides.rubyonrails.org/engines.html
2. pages controller:
    ```ruby
    #READ: http://guides.rubyonrails.org/routing.html  #3.11 Route Globbing and Wildcard Segments
    get '*path', to: 'pages#show'
    @path = params[:path] #=> /about
    ```
  
    view:
    ```haml
    = @path
    ```
  
    tests: разобраться с dummy
3. прикрутить опциональную поддержку markdown


@path нужна для простановки заголовков
в основном приложении можно будет переопределить вьюху и написать
```haml
- title t(@path.gsub('/', '.'))
= markdown @content
```
    
  
