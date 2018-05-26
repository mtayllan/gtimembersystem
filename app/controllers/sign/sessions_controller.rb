# frozen_string_literal: true

class Sign::SessionsController < Devise::SessionsController
  layout :layout_by_resource
  
  def layout_by_resource
    if devise_controller? && resource_name == :admin

      "admin_lte_2_login"
    elsif devise_controller? && resource_name == :user
      "user_lte_2_login"
    end
  end
    

  # before_action :configure_sign_in_params, only: [:create]

  # GET /resource/sign_in
  # def new
  #   super
  # end

  # POST /resource/sign_in
  # def create
  #   super
  # end

  # DELETE /resource/sign_out
  # def destroy
  #   super
  # end

  # protected

  # If you have extra params to permit, append them to the sanitizer.
  # def configure_sign_in_params
  #   devise_parameter_sanitizer.permit(:sign_in, keys: [:attribute])
  # end
end
