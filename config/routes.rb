Rails.application.routes.draw do
  mount RailsAdmin::Engine => '/admin', as: 'rails_admin'
  root 'principal#index' #Ruta de la pagina principal
  
  #incluir a futuro una ruta para mostrar los datos del usuario supongo.

  #en la parte de path_names, lo puse para que salgan estos en vez de los por defecto de devise
  devise_for :users,  :path => '', :path_names => { :sign_in => "login", :sign_out => "logout"}, :skip => [:registrations]

  #Esta funcion permite editar los usuarios
  as :user do
  get 'usuario/editar' => 'devise/registrations#edit', :as => 'edit_user_registration'
  put 'users' => 'devise/registrations#update', :as => 'user_registration'
  end

  #en caso de que la ruta no exista, redirecciona al root
  get '*path' => redirect('/')
end
