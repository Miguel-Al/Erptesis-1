Rails.application.routes.draw do
  get 's_inicio/S_factura'
  get 's_inicio/S_resumen'
  get 's_inicio/S_Info'
  root 'principal#index' #Ruta de la pagina principal

  get '/users/sign_in', to: redirect("/login") # Redireccion hacia pagina de login NO BORRAR

  devise_scope :user do
    get "/login" => "devise/sessions#new", as: "new_session_user"  #Pagina de Login
  end

  devise_for :users
  get '*path' => redirect('/') #en caso de que la ruta no existe, redirecciona al root
end
