# frozen_string_literal: true

class Shop::SessionsController < Devise::SessionsController
  # before_action :configure_sign_in_params, only: [:create]

  

  protected
  
  def after_sign_in_path_for(resource)
    shop_top_path
  end
  
  def after_sign_out_path_for(resource)
    new_shop_session_path
  end

  def configure_sign_in_params
    devise_parameter_sanitizer.permit(:sign_in) { |u| u.permit(:email, :encrypted_password) }
  end

  
end
