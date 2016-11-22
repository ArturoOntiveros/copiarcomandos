Rails.application.routes.draw do

  resources :posts do
    resources :comments
  end


  devise_for :users, controllers: { registrations: "registrations" }

  ActiveAdmin.routes(self)
    namespace :admin do
      resources :artists do
        resources :albums do
          resources :songs     
        end
      end
    end
   
    namespace :admin do
      resources :artists do
        resources :songs 
      end
    end
   
    namespace :admin do
      resources :albums do
        resources :songs
      end
    end

  get 'artistas/prueba'

  get 'artistas/ver/:id' => 'artistas#ver'

  root 'index#landingpage'

  get 'profile/profile'

  get 'new/new'

  get 'indnew/indnew'

  get 'artistas/comprar'

  post 'artistas/comprar'

end
