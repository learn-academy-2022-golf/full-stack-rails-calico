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
        @post = Post.all
    end

config/routes.rb
     get 'post' => 'post#index'

created index file for app/views/post
    index.html.erb

Opened rails server to see web page in action
    rails s

Rooted landing page to index
    root "post#index"

app/controller/post_controller.rb
    commented out   line 3 -->      @post = Post.all

app/views/post/index.html.erb
    <h1>Calico Post Titles</h1>
    <h2>lets Just see</h2>
    <h2>Fake Post</h2>
    <h2>Check this</h2>    


