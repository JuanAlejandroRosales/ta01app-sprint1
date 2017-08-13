# README

This README would normally document whatever steps are necessary to get the
application up and running.

Things you may want to cover:

* Ruby version

* System dependencies

* Configuration

* Database creation

* Database initialization

* How to run the test suite

* Services (job queues, cache servers, search engines, etc.)

* Deployment instructions

* ...
workspace
Ruby on Rails project Tarea Academica 1

Comandos utilizados
$ rvm list: le mostrará una lista de versiones disponibles de Ruby.

$ rvm gemset list: Puede ver una lista de gemsets disponibles asociados con la versión actual de Ruby. 
$ rvm -v : Verficar la version de rvm instalada

$ ruby -v : Verficar la version de ruby instalada
$ rails -v : Verficar la version de rails instalada
$ gem -v : Verficar la version de gem instalada
$ ls -1p : Listar el contenido del directorio del proyecto
$ rails new --help : Ayuda para el comando rails

$ rails new ta1app-sprint1 : 	El comando rails new creará 9 carpetas y 53 archivos
				Se instalará 44 gemas en su gemset.
Actualice su gestor de paquetes primero:
$ sudo apt-get update

$ sudo apt-get install curl

Actualizar Ruby
RVM Ruby Version Manager
$ rvm -v
$ rvm get stable --autolibs=enable
$ rvm -v
$ ruby -v
$ rvm install ruby
$ ruby -v
$ rvm list
$ rvm --default use ruby-2.4.0
$ rvm list
rvm rubies


   ruby-2.3.0 [ x86_64 ]

=* ruby-2.4.0 [ x86_64 ]


# => - current

# =* - current && default

#  * - default


Install Node.js
Para el desarrollo en Ubuntu Linux es mejor instalar el entorno JavaScript 
de servidor de Node.js.
$ node -v
$ nvm install 8.3.0
$ nvm ls
$ nvm alias default 8.3.0
$ nvm ls

Actualizando el gem Manager
$ gem -v
$ gem update --system
$ gem -v

Instalar bundler
La gema Bundler es una herramienta esencial para administrar las gemas 
al desarrollar y ejecutar aplicaciones de Rails.
$ gem install bundler 

Instalar nokogiri
Nokogiri es una gema que es una dependencia para muchas otras gemas.
$ gem install nokogiri

Creando el directorio del proyecto
$ mkdir Development
$ cd Development

Crear un gemset específico del proyecto
$ rvm use ruby-2.4.0@ta01app-sprint1 --ruby-version --create
$ rvm gemset list

Instalar rails
$ gem install rails
$ rails -v 

Actualiizar la lista de gemas
$ gem outdated --lista de gemas desactualizados 
$ gem update

Crear rails aplicación
$ rails new ta01app-sprint1 -d mysql
$ cd ta01app-sprint1

Verificar los Directorios creados

$ ls -1p
$ rake -T

Iniciamos la aplicacion por primera vez
$ rails s -p $PORT -b $IP

Se muestra el mensaje 
Yay! You’re on Rails! - Significa todo correcto

Creamos nuestro repositorio en GITHUB con el nombre de
ta01app-sprint1

Repositorio GITHUB
$ which git
$ git version



Verficamos nuestra credenciales
$ git config --get user.name
$ git config --get user.email

Crear el Repositorio Git
$ git init .

$ ls -1p .git

$ git status

$ git add -A
$ git commit -m "Initial commit"
$ git log

$ git log --oneline

Subirlo a GITHUB

$ git remote add origin https://github.com/JuanAlejandroRosales/ta01app-sprint1.git
$ git push -u origin master


$ git mv README.rdoc README.md
$ git status


JuanAlejandroRosales


$ git add -A
$ git commit -m "registro de usuarios"
$ git push origin master

Instalando Twitter Bootstrap for Rails 5
Fuente: https://github.com/seyhunak/twitter-bootstrap-rails
copiar archivos en Gemfile
gem "therubyracer"

gem "less-rails" #Sprockets (what Rails 3.1 uses for its asset pipeline) supports LESS

gem "twitter-bootstrap-rails"

instalacion y confuguracion de Twitter Bootstrap
$ rails g bootstrap:install less

insert  app/assets/javascripts/application.js
      
create  app/assets/javascripts/bootstrap.js.coffee
      
create  app/assets/stylesheets/bootstrap_and_overrides.css.less
      
create  config/locales/en.bootstrap.yml
        
gsub  app/assets/stylesheets/application.css

aplicar los estilos de Bootstrap al template por defecto del proyecto
layout
$ rails g bootstrap:layout application


Instalando y configurando las gemas
$ bundle install o bundle

Iniciando MySQL y Creando la base de datos del proyecto
$ sudo service mysql start
$ sudo service postgresql start
postgresql
$ rake db:create
Created database 'ta01app-sprint1_development'

Created database 'ta01app-sprint1_test'

Instalar device
Fuente: https://github.com/plataformatec/devise
gem 'devise'
bundle install

$ rails generate devise:install
stall
Running via Spring preloader in process 35865

      create  config/initializers/devise.rb

      create  config/locales/devise.en.yml
===============================================================================


Some setup you must do manually if you haven't yet:


  1. Ensure you have defined default url options in your environments files. Here

     is an example of default_url_options appropriate for a development environment

     in config/environments/development.rb:


       config.action_mailer.default_url_options = { host: 'localhost', port: 3000 }


     In production, :host should be set to the actual host of your application.


  2. Ensure you have defined root_url to *something* in your config/routes.rb.

     For example:


       root to: "home#index"


  3. Ensure you have flash messages in app/views/layouts/application.html.erb.

     For example:


       <p class="notice"><%= notice %></p>

       <p class="alert"><%= alert %></p>


  4. You can copy Devise views (for customization) to your app by running:


       rails g devise:views

===============================================================================

      invoke  active_record
      
create    db/migrate/20170811125515_devise_create_users.rb
      
create    app/models/user.rb
      invoke    test_unit
      
create      test/models/user_test.rb
      
create      test/fixtures/users.yml
      
insert    app/models/user.rb
      
 route  devise_for :users

$ rails db:migrate

-- create_table(:users)

   -> 0.0133s
-- add_index(:users, :email, {:unique=>true})

   -> 0.0256s
-- add_index(:users, :reset_password_token, {:unique=>true})

   -> 0.0229s
== 20170811125515 DeviseCreateUsers: migrated (0.0620s) 
=======================


---no crrear
$ rails generate devise:views
--usar$ rails generate devise:views users
$ rails generate devise:views -v registrations confirmations

$ rails generate devise:controllers users
https://github.com/plataformatec/devise
----------
# touch app/views/layouts/_authentication.html.erb
Fuentes

instalar Devise Bootstrap Views
===============================
Fuente: https://github.com/hisea/devise-bootstrap-views
gem 'devise-bootstrap-views'
$ bundle

# SASS
*= require devise_bootstrap_views

# LESS
*= require devise_bootstrap_views_less

https://github.com/plataformatec/devise/wiki/I18n
config.i18n.default_locale = :sv

Set default locale (config/application.rb)
rails g devise:views:locale es

# rails g devise:views:bootstrap_templates
strap_templates
Running via Spring preloader in process 3690

      create  app/views/devise

      create  app/views/devise/confirmations/new.html.erb

      create  app/views/devise/mailer/confirmation_instructions.html.erb

      create  app/views/devise/mailer/reset_password_instructions.html.erb

      create  app/views/devise/mailer/unlock_instructions.html.erb

      create  app/views/devise/passwords/edit.html.erb

      create  app/views/devise/passwords/new.html.erb

      create  app/views/devise/registrations/edit.html.erb

      create  app/views/devise/registrations/new.html.erb

      create  app/views/devise/sessions/new.html.erb

      create  app/views/devise/shared/_links.html.erb

      create  app/views/devise/unlocks/new.html.erb












Generando las paginas para los perfines
=======================================

$ rails g scaffold profiles first_name:string last_name:string born_at:datetime user:references

--no ejecutar$ rails destroy scaffold Profile

      invoke  active_record

      create    db/migrate/20170811130744_create_profiles.rb

      create    app/models/profile.rb
    
	invoke    test_unit

      create      test/models/profile_test.rb

      create      test/fixtures/profiles.yml

      invoke  resource_route

       route    resources :profiles

      invoke  scaffold_controller

      create    app/controllers/profiles_controller.rb
 
     invoke    erb
      create      app/views/profiles

      create      app/views/profiles/index.html.erb

      create      app/views/profiles/edit.html.erb

      create      app/views/profiles/show.html.erb

      create      app/views/profiles/new.html.erb
 
     create      app/views/profiles/_form.html.erb

      invoke    test_unit

      create      test/controllers/profiles_controller_test.rb

      invoke    helper

      create      app/helpers/profiles_helper.rb

      invoke      test_unit

      invoke    jbuilder

      create      app/views/profiles/index.json.jbuilder

      create      app/views/profiles/show.json.jbuilder

      create      app/views/profiles/_profile.json.jbuilder

      invoke  test_unit
      create    test/system/profiles_test.rb

      invoke  assets

      invoke    coffee

      create      app/assets/javascripts/profiles.coffee

      invoke    scss

      create      app/assets/stylesheets/profiles.scss

      invoke  scss

      create    app/assets/stylesheets/scaffolds.scss
# rake db:migrate
-- create_table(:profiles)
   -> 0.0277s
# rails g bootstrap:themed profiles 

aui me quede cree la tabbal de perfiles

Running via Spring preloader in process 38538
      
create  config/initializers/devise.rb
      
create  config/locales/devise.en.yml
===============================================================================


Some setup you must do manually if you haven't yet:

  

1. Ensure you have defined default url options in your environments files. Here
     
is an example of default_url_options appropriate for a development environment
     
in config/environments/development.rb:

       
config.action_mailer.default_url_options = { host: 'localhost', port: 3000 }

     
In production, :host should be set to the actual host of your application.

  

2. Ensure you have defined root_url to *something* in your config/routes.rb.
     
For example:

       root to: "home#index"

  

3. Ensure you have flash messages in app/views/layouts/application.html.erb.
     
For example:

       
<p class="notice"><%= notice %></p>
       
<p class="alert"><%= alert %></p>

  
4. You can copy Devise views (for customization) to your app by running:

       
rails g devise:views

===============================================================================



gem 'bootstrap-sass'
group :development do
  gem 'rails_layout'
end
gem 'devise'
gem 'jquery-rails'
gem 'enum_help'
# Simplified Form Management


gem 'simple_form'
# Authentication Support


gem 'devise'


gem 'devise-bootstrap-views'
# Admin Section Support


gem 'rails_admin'
# Attachments Support
gem "paperclip", "~> 5.0.0"

Instalar jquery-rails
gem 'jquery-rails'
bundle



$ rails generate layout:install bootstrap3
$ rails generate layout:navigation

Generando el controller y views para vistas estáticas
$ rails g controller pages index about_us faq tos contact_us
--$ rails g controller pages index about_me services contact_us
$ rails g controller pages contact_us
      create  app/controllers/pages_controller.rb

       route  get 'pages/contact_us'

       route  get 'pages/services'

       route  get 'pages/about_me'

       route  get 'pages/index'

      invoke  erb

      create    app/views/pages

      create    app/views/pages/index.html.erb

      create    app/views/pages/about_me.html.erb

      create    app/views/pages/services.html.erb

      create    app/views/pages/contact_us.html.erb

      invoke  test_unit

      create    test/controllers/pages_controller_test.rb

      invoke  helper

      create    app/helpers/pages_helper.rb

      invoke    test_unit

      invoke  assets

      invoke    coffee

      create      app/assets/javascripts/pages.coffee

      invoke    scss

      create      app/assets/stylesheets/pages.scss




Estableciendo la ruta raíz para el proyecto
Modificamos el archivo config/routes.rb.
get 'pages/index'
por:
root 'pages#index'

  root 'pages#index'
  #get 'pages/index'  

creando las rutas
# rake routes
                  Prefix Verb   URI Pattern                    Controller#Action
                    root GET    /                              pages#index

          pages_about_me GET    /pages/about_me(.:format)      pages#about_me
          	pages_services GET    /pages/services(.:format)      pages#services

        pages_contact_us GET    /pages/contact_us(.:format)    pages#contact_us
                	profiles GET    /profiles(.:format)            profiles#index
                         	POST   /profiles(.:format)            profiles#create

        new_profile GET    /profiles/new(.:format)        profiles#new
            		edit_profile GET    /profiles/:id/edit(.:format)   profiles#edit
                 	profile GET    /profiles/:id(.:format)        profiles#show
                         	PATCH  /profiles/:id(.:format)        profiles#update

        PUT    /profiles/:id(.:format)        profiles#update
   
        DELETE /profiles/:id(.:format)        profiles#destroy

        new_user_session GET    /users/sign_in(.:format)       devise/sessions#new
            	user_session POST   /users/sign_in(.:format)       devise/sessions#create
    	destroy_user_session DELETE /users/sign_out(.:format)      devise/sessions#destroy
       	new_user_password GET    /users/password/new(.:format)  devise/passwords#new
      	edit_user_password GET    /users/password/edit(.:format) devise/passwords#edit
           	user_password PATCH  /users/password(.:format)      devise/passwords#update
                         PUT    /users/password(.:format)      devise/passwords#update
                         	POST   /users/password(.:format)      devise/passwords#create
cancel_user_registration 	GET    /users/cancel(.:format)        devise/registrations#cancel
   	new_user_registration GET    /users/sign_up(.:format)       devise/registrations#new
  	edit_user_registration GET    /users/edit(.:format)          devise/registrations#edit
       	user_registration PATCH  /users(.:format)               devise/registrations#update
                         PUT    /users(.:format)               devise/registrations#update
                         DELETE /users(.:format)               devise/registrations#destroy
                         POST   /users(.:format)               devise/registrations#create

Creando un partial para evitar redundancia de código en el
Application layout
# touch app/views/layouts/_menu.html.erb
# touch app/views/layouts/_sidebar.html.erb

'layouts/menu'
<li><%= link_to "HOME", root_path %></li>
<li><%= link_to "ABOUT ME", pages_about_me_path %></li>

<li><%= link_to "SERVICES", pages_services_path %></li>

<li><%= link_to "CONTACT US", pages_contact_us_path %></li>

abrimos para edición el archivo
app/views/layouts/application.html.erb.

<%= render 'layouts/navigation_links' %>
reemplaza a las etiqueta <li></li>

Agrgando layout para las vistas internas
# cp app/views/layouts/application.html.erb app/views/layouts/internal.html.erb

<%= yield %>
Sobre el contenido colocar el codigo
<div class="page-header">
           
	<h1><%= yield :header_title %> 
	<small><%= yield :header_sub_title %></small></h1>
          
</div>

Editamos el archivo app/controllers/pages_controller.rb.
debajo class
layout 'internal', except: [:index]

$ touch app/views/pages/_map.html.erb

$ rails s -p $PORT -b $IP

<div class="nav navbar-nav navbar-right">

        <%= render 'layouts/nav_links_for_auth' %>

</div>


Fuente: https://github.com/rails/jquery-rails
app/assets/javascripts/application.js
//= require jquery
//= require jquery_ujs

Install the RailsLayout Gem
Fuente:https://github.com/RailsApps/rails_layout
group :development do
  gem 'rails_layout'
end
$ bundle install

$ rails generate layout:install bootstrap3
      remove  app/assets/stylesheets/application.css
      
create  app/assets/stylesheets/application.css.scss
      
create  app/assets/stylesheets/1st_load_framework.css.scss
    
conflict  app/assets/javascripts/application.js
Overwrite /home/ubuntu/workspace/Development/ta01app-sprint1/app/assets/javascripts/application.js? (enter "h" for help) [Ynaqdh] Y
       
force  app/assets/javascripts/application.js
      
remove  app/assets/stylesheets/simple.css
      
remove  app/assets/stylesheets/foundation_and_overrides.css.scss
      
remove  app/views/layouts/application.html.erb
      
create  app/views/layouts/application.html.erb
      
create  app/views/layouts/_messages.html.erb
      
create  app/views/layouts/_navigation.html.erb
      
create  app/views/layouts/_navigation_links.html.erb

$ rails generate layout:navigation --force

Temas de bootstrap
https://bootswatch.com/

https://github.com/seyhunak/twitter-bootstrap-rails
http://getbootstrap.com/javascript/
https://github.com/Daso/Restaurant_sprint1
https://github.com/RailsApps/rails-bootstrap
http://railsapps.github.io/installrubyonrails-ubuntu.html
https://updatey.com/media/uploads/projects/posts/files/jmif3s8lar4uaf67j2ni.pdf
https://www.railstutorial.org/book/beginning
https://www.tutorialspoint.com/ruby-on-rails/ruby-on-rails-tutorial.pdf