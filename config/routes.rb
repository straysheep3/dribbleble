Rails.application.routes.draw do
  devise_for :users
  resources :posts do
    member do
      # postsコントローラにupvoteアクションを追加
      get "like", to: "posts#upvote"
      # postsコントローラにdownvoteアクションを追加
      get "dislike", to: "posts#downvote"
    end
    resources :comments
  end

  root "posts#index"
end
