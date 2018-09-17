Rails.application.routes.draw do
  resources :add_restaurant_id_to_plates
  resources :ingredients
  resources :plates
  resources :restaurants do
    collection do
      get 'homepage' # definindo a rota da homepage
    end
  end

  root 'restaurants#homepage'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
