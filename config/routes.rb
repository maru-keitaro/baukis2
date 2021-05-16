Rails.application.routes.draw do
  namespace :staff do  # 職員
    root "top#index"
    get "login" => "sessions#new", as: :login
    post "session" => "sessions#create", as: :session
    delete "session" => "sessions#destroy"
  end

  namespace :admin do  # 管理者
    root "top#index"
    get "login" => "sessions#new", as: :login
    post "session" => "sessions#create", as: :session
    delete "session" => "sessions#destroy"
  end

  namespace :customer do  # 顧客
    root "top#index"
  end
end
