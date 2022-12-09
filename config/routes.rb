Rails.application.routes.draw do
  # 会員側
  root to: "public/homes#top"
  devise_for :customers,skip: [:passwords], controllers: {
  registrations: "public/registrations",
  sessions: 'public/sessions'
}

scope module: :public do
    resource :customers,only: [:show]
    patch 'customers/information' => 'customers#update', as:'information'
    get 'customers/quit' => 'customers#quit', as:'quit'
    patch 'customers/withdrawal' => 'customers#withdrawal', as:'withdrawal'
    resources :posts, only: [:index, :show]
end    
  
  
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
