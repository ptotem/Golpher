class ApplicationController < ActionController::Base
  protect_from_forgery

  rescue_from CanCan::AccessDenied do |exception|
    redirect_to root_url, :alert => exception.message
  end

  def current_ability
    @current_ability ||= Ability.new(current_admin_user)
  end

  protected

    def user_for_paper_trail
      admin_user_signed_in? ? current_admin_user : 'Unknown user'
    end

end
