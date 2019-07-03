Rails.application.routes.draw do
  root 'home#show'

  devise_for :users

  resources :artists do
    resources :releases do
      collection do 
        post 'import', to: 'imports#artist_releases'
      end
    end    
  end
  
  resources :contatos

  post 'artists/import', to: 'imports#artist'
end

