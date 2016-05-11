Rails.application.routes.draw do
  resources :featured_images
  root to: "posts#index"
  resources :posts
  resources :users
  resources :posts
  resources :users
  get  "background_process" => "background_process#index"
  post "background_process" => "background_process#background_process"

  get "posts_stats" => "stats#posts"
  get "posts_demo_csv" => "imports#posts_demo_csv"
  post "import_posts" => "imports#posts"
  post "like_post/:id" => "posts#like", as: :like_post
end
