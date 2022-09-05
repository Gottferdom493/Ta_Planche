class ProfilsController < ApplicationController


  def index
    @profils = Profil.all
    @item = Item.find(params[:item_id])
  end

end
