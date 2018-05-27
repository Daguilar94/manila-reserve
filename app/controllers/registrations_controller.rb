class RegistrationsController < Devise::RegistrationsController
  prepend_before_action :require_no_authentication, only: :cancel
  before_action :authenticate_user!, :redirect_unless_admin

  def new
    super
    puts "WHAAAAAT!!!!"
    # puts current_user.role

  end

  protected
  # def after_update_path_for(resource)
  #   articles_path
  # end
  def redirect_unless_admin
    unless current_user
      redirect_to root_path
    end
  end
end
