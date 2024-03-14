# このファイルではルーティングを設定することができる。
Rails.application.routes.draw do
  get "up" => "rails/health#show", as: :rails_health_check

  # localhost:3000/postsのルーティングを設定する
  # 以下のルーティングにより
  # localhost:3000/posts/index
  # localhost:3000/posts/new
  # localhost:3000/posts/create
  # のルーティングが完了した
  resources :posts, only: [:index, :new, :create]
  
end
