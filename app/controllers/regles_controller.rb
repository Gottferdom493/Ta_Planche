class ReglesController < ApplicationController
  skip_before_action :authenticate_user!, only: [:show]

def show
  skip_authorization
end

end
