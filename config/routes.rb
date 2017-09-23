Rails.application.routes.draw do
  get '/' => 'redirect#index'
  post '/redirects' => 'redirect#create'
  get '/:shortened' => 'redirect#link'
end
