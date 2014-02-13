class UsersController < Devise::RegistrationsController

  before_action :configure_permitted_parameters

  def new

    @notice = 'All fields are mandatory !'
    super
  end


  protected

  def configure_permitted_parameters
    devise_parameter_sanitizer.for(:sign_up) do |u|
      u.permit(:name, :email, :profession, :password, :password_confirmation)
    end
    #devise_parameter_sanitizer.for(:sign_up) << :name << :profession
  end
end
