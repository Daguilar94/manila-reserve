class RegistrationsController < Devise::RegistrationsController
  prepend_before_action :require_no_authentication, only: :cancel
  before_action :authenticate_user!, :redirect_unless_admin

  def new
    super
    puts "User created"
  end

  def update
    super
    puts "Profile updated"
  end

  protected

  def redirect_unless_admin
    unless current_user && current_user.role = "admin"
      redirect_to root_path
    end
  end
end
