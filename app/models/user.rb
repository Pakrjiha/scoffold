class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  # 두번째 줄 기능 유저 인증 , 비밀번호입력 , 시간 지나면 로그아웃 , 다른 페이지 아이디로 로그인 기능
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
end
