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

This creates a new controller named home with action index, try webpage localhost:3000/home/index.

we can change the content of action index by editing file _app/views/home/index.html.erb_

# Route
route file is in config/routes.rb

route root to be handled by controller home with action index.
```ruby 
root 'home#index'  
```
