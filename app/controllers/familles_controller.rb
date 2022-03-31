class FamillesController < ApplicationController
  def index
    @familles = Famille.all
  end
end
