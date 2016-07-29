Rails.application.routes.draw do
  root to: 'main#index'

  get '/search_image_by_link' => 'search#image'
end
