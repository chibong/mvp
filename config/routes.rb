MVP::Application.routes.draw do
 get '/', controller: 'users', action:'index'

 get "/users", controller: 'users', action: 'index'
 post "/users", controller: 'users', action: 'create'

 get '/users/new', controller: 'users', action: 'new'
 get '/users/:id', controller: 'users', action: 'show'
 put '/users/:id', controller: 'users', action: 'update'

 delete '/users/:id', controller: 'users', action: 'destroy'
 get "/movies/:id/edit", controller: 'movies', action: 'edit'
end
