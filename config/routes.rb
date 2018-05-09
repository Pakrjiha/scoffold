Rails.application.routes.draw do
  
  devise_for :users,
  path: 'users',
  path_name: {sign_in: 'login', sign_out: 'logout'} # 액션의 이름에 대한 행동의 이름들
  #rake routes 를 콘솔창에 쳤을때 해당 부분의 경로가 apple 로 바뀌게 됨! 즉 저걸 바꾸면 관련된 경로의 이름 조정 가능
  
  root "posts#index"
  
  resources :posts
  

end
