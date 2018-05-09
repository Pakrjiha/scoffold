class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception
  before_action :configure_permitted_parameters, if: :devise_controller?

  protected

  def configure_permitted_parameters
    #회원 가입시 추가적으로 name을 받게끔 도와주는 파라메터
    devise_parameter_sanitizer.permit(:sign_up, keys: [:name])
    #회원 정보 수정시 추가적으로 name을 받을수 있게 함
    devise_parameter_sanitizer.permit(:account_update, keys: [:name])
  end
end
