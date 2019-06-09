# rubyonrails
little projects with Ruby on Rails

# install ruby on rails
## install ruby

install rvm:
```bash
curl -sSL https://get.rvm.io | bash -s stable
```
When complete, **_restart your terminal_** for the rvm command to work.

```bash
rvm list known
```
This shows the list of versions of the ruby.

install ruby:

```bash
rvm install ruby-2.6.3
```
check ruby version:

```bash
ruby -v
```
> If it still shows you original mac ruby 2.0., run rvm use ruby-2.4.2 --default.

## install rails
```bash
gem install rails -v 5.2.2
```

check rails version:

```bash
rails -v
```

# create a new project
go to the desired directory and run

```bash
rails new <project name>
```

this will create the project with a directory named <project name>.

start web server:

```bash
rails server (or rails s)
```

We can visit the webpage with localhost:3000.

# Controller
create controller:

```bash
rails generate controller home index
```

This creates a new **controller home with action index**, try webpage localhost:3000/home/index.

> edit webpage content of action index by editing file _app/views/home/index.html.erb_

# Route
route file is in config/routes.rb

route homepage to be handled by *Controller* home with *Action* index.
```ruby 
root 'home#index'  
```
route GET /about to *Controller* home with *Action* about.
step 1: config config/routes.rb by adding:
```ruby
get '/about' =>  'home#about'
```

step 2: config app/controllers/home_controller.rb by adding:
```ruby
def about
end
```
step 3: add a new view file *app/views/home/index.html.erb*, add contents:
```ruby
<h1>about us</h1>
```

# bootstrap

CDN link : https://getbootstrap.com/docs/4.1/getting-started/download/#bootstrapcdn

add bootstrap to the top of head of *views/layouts* erb files.
```ruby
<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/css/bootstrap.min.css" integrity="sha384-MCw98/SFnGE8fJT3GXwEOngsV7Zt27NXFoaoApmYm81iuXoPkFOJwJ8ERdknLPMO" crossorigin="anonymous">
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/js/bootstrap.min.js" integrity="sha384-ChfqqxuZUCnJSK3+MXmPNIyE6ZbWh2IMqE241rYiqJxyMiZ6OW/JmZQ5stwEULTy" crossorigin="anonymous"></script>
```
> user guider to bootstrap : https://getbootstrap.com/docs/4.3/components/alerts/

插入图片用image_tag,参数可以设置宽和高

直接设定style的方法就是直接加上style="..."

> Another way is install bootstrap with
```bash
gem install bootstrap -v 4.3.1
```

then add these in html head
```ruby
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/css/bootstrap.min.css" integrity="sha384-MCw98/SFnGE8fJT3GXwEOngsV7Zt27NXFoaoApmYm81iuXoPkFOJwJ8ERdknLPMO" crossorigin="anonymous">
    <script src="https://code.jquery.com/jquery-3.3.1.slim.min.js" integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo" crossorigin="anonymous"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js" integrity="sha384-UO2eT0CpHqdSJQ6hJty5KVphtPhzWj9WO1clHTMGa3JDZwrnQq4sF86dIHNDz0W1" crossorigin="anonymous"></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js" integrity="sha384-JjSmVgyd0p3pXB1rRibZUAYoIIy6OrQ6VrjIEaFf/nJGzIxFDsf4x0xIM+B07jRM" crossorigin="anonymous"></script>
```

# layout

Contents in layouts are available for **all pages**.

# workflow

页面请求先由config/routes.rb 文件route到对应controller,然后由controller指引到对应action文件。

控制器位于 app/controllers/controller_name.rb 文件 ，视图位于 app/views/welcome/action.html.erb 文件。
