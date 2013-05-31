MVP::Application.routes.draw do

  get '/login', controller: 'sessions', action: 'new'
  post '/sessions', controller: 'sessions', action: 'create'
  get "/logout", controller: 'sessions', action: 'destroy'

  # Routes for the Answer resource:
  # CREATE
  get '/answers/new', controller: 'answers', action: 'new', as: 'new_answer'
  post '/answers', controller: 'answers', action: 'create'

  # READ
  get '/answers', controller: 'answers', action: 'index', as: 'answers'
  get '/answers/:id', controller: 'answers', action: 'show', as: 'answer'

  # UPDATE
  get '/answers/:id/edit', controller: 'answers', action: 'edit', as: 'edit_answer'
  put '/answers/:id', controller: 'answers', action: 'update'

  # DELETE
  delete '/answers/:id', controller: 'answers', action: 'destroy'
  #------------------------------
# Routes for the User resource:
  # HOME
  get '/', controller: 'users', action:'home'

  # CREATE
  get '/users/new', controller: 'users', action: 'new', as: 'new_user'
  post '/users', controller: 'users', action: 'create'

  # READ
  get '/users', controller: 'users', action: 'index', as: 'users'
  # get '/users/:id', controller: 'users', action: 'show', as: 'user'
  get '/users', controller: 'users', action: 'show', as: 'user'

  # UPDATE
  get '/users/:id/edit', controller: 'users', action: 'edit', as: 'edit_user'
  put '/users/:id', controller: 'users', action: 'update'

  # DELETE
  delete '/users/:id', controller: 'users', action: 'destroy'


  get 'users/:id/questions/new', controller: 'questions', action: 'new', as:'new_question'
  post 'users/:id/questions', controller: 'questions', action: 'create'

  get 'users/:id/questions', controller: 'questions', action: 'index', as: 'questions'
# need to figure out how to send it a user and a question id
  get 'users/:user_id/questions/:id', controller: 'questions', action: 'show', as: 'question'


  # UPDATE
  get 'users/:id/questions/:id/edit', controller: 'questions', action: 'edit', as: 'edit_question'
  put 'users/:id/questions/:id', controller: 'questions', action: 'update'


  # DELETE
  delete '/questions/:id', controller: 'questions', action: 'destroy'




end
