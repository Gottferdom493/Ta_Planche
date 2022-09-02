class ProfilsController < ApplicationController


  def index
    @profils = Profil.all
    
  end



end
