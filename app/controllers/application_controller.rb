class ApplicationController < ActionController::Base
  before_action :authenticate_user! #vérouille par défaut tous les controller
end
