Rails.application.routes.draw do
  resources :shops do
    resources :accesses
    resources :official_photos
    resources :photos
    resources :reviews
  end
end
