Steps taken:
$ rails generate model CalicoBlogPost title:string content:string
$ rails db:create
$ rails generate controller CalicoBlogPost
$ rails db:migrate
Quick change to naming convention as recommended by Austin to save typing time.  We deleted the model and controller then re-generated new model and controller name Post. 
$ rails d controller CalicoBlogPost
$ rails d model CalicoBlogPost 
$ rails g controller Post 
$ rails g model Post title content:text
                        ^ Rails built in short cut, title is a recognized key word and it already knows its a string.
$ rails db:drop
    had to also drop initial db from old naming convention. 
    After deleting database also had to manually go in and delete schema file before creating new database. 
$ rails db:create
$ rails db:migrate

app/controller/post_controller.rb
    def index
        @posts = Post.all
    end

config/routes.rb
    get 'posts' => 'post#index'

created index file for app/views/post
    index.html.erb

Opened rails server to see web page in action
    rails s

Rooted landing page to index
    root "post#index"

app/views/post/index.html.erb
    <h1>Calico Post Titles</h1>

    <ul>
    <% @posts.each do |post| %>
    <li><%= post.title %></li>
    <% end %>
    </ul>   

app/controller/post_controller.rb
    def show
        @post = Post.find(params[:id])
    end

config/routes.rb
    get 'posts/:id' => 'post#show'

app/views/post/show.html.erb
    <h2>Blog Post: <%= @post.title %></h2>

    <p><%= @post.content %></p>

    <%= link_to 'Blog Post Home', posts_path %>

app/views/post/index.html.erb

    <% @posts.each do |post| %>
    <li><%= link_to post.title, post_path(post) %></li>
    <% end %>

config/routes.rb

    root "post#index"
    get 'posts' => 'post#index', as: 'posts'
    get 'posts/:id' => 'post#show', as: 'post'
