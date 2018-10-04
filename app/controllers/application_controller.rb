class ApplicationController < ActionController::Base
  def validate_admin!
    unless current_user.admin?
      sign_out current_user
      redirect_to '/'
    end
  end
end
