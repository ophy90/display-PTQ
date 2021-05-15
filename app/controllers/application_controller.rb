class ApplicationController < ActionController::Base
   before_action :configure_permitted_parameters, if: :devise_controller?

  protected

  # le sign-up form ne reconnait pas le club_id car ce n'est pas un paramètre de base, il faut donc ajoute cette méthode pour que l'id soit accepté seon la doc devise
  def configure_permitted_parameters
    devise_parameter_sanitizer.permit(:sign_up, keys: [:club_id])
  end
end
