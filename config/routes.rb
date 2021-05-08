Rails.application.routes.draw do
  root 'principal#index' #Ruta de la pagina principal

  get '/users/sign_in', to: redirect("/login") # Redireccion hacia pagina de login NO BORRAR
  get "/usuarios" => "users#index", as: "usuarios_ver"  #Pagina de los usuarios

  devise_scope :user do
    get "/login" => "devise/sessions#new", as: "new_session_user"  #Pagina de Login
    get "registrar", to: "registro#new"
    get "usuarios", to: "users#create"
    get '/editar' => 'devise/registrations#edit', as: "edit_user_registration" #Pagina para editar usuario
  end

  devise_for :users, :controllers => { :registrations => 'registro'}
  match 'users/:id' => 'users#destroy', :via => :delete, :as => :admin_destroy_user
  get '*path' => redirect('/') #en caso de que la ruta no existe, redirecciona al root
end
