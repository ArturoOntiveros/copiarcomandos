Rails.application.routes.draw do

  resources :comentarios
  resources :articles
  get 'preguntas/frecuentes'

  get 'nuevo/noticias'

  get 'cultura/cronologia'

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

  get 'cultura/cronologia', to: 'cultura#cronologia', as: 'cronologia' 

  get 'nuevo/noticias', to: 'nuevo#noticias', as: 'noticias'   

  get 'preguntas/frecuentes', to: 'preguntas#frecuentes', as: 'preguntas'   

  get 'indnew/indnew'


end
