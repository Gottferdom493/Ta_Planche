class CalendriersController < ApplicationController
  skip_before_action :authenticate_user!, only: [:index]

  def index
    skip_authorization
    # Lire le fichier Excel
    xlsx = Roo::Excelx.new("#{Rails.root}/public/excel/calendrier.xlsx")
    # Lire la première feuille
    xlsx.default_sheet = xlsx.sheets.first

    # Créer une liste pour stocker les données
    @calendriers = []

    # Parcourir chaque ligne et extraire les données
    3.upto(xlsx.last_row) do |line|
      debut = xlsx.cell(line, 'A').strftime('%d/%m/%Y')
      fin = xlsx.cell(line, 'B').strftime('%d/%m/%Y')
      competition = xlsx.cell(line, 'C')
      @calendriers << { debut: debut, fin: fin, competition: competition }
    end
  end
end
