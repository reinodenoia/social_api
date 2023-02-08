Rails.application.routes.draw do
  namespace 'api' do
    resources :posts, only: %i[index] do
      member do
        post 'like', to: 'posts#like'
        post 'dislike', to: 'posts#dislike'
      end
    end
  
    resources :likes, only: %i[index]
  end
end
