Rails.application.routes.draw do
  namespace :staff do  # 職員
    root "top#index"
  end

  namespace :admin do  # 管理者
    root "top#index"
  end

  namespace :customer do  # 顧客
    root "top#index"
  end
end
