class CalendriersController < ApplicationController
  skip_before_action :authenticate_user!, only: [:index]

  def index
    skip_authorization
    # Lire le fichier Excel
    xlsx = Roo::Excelx.new(File.join(Rails.root, 'public', 'excel', 'calendrier.xlsx'))
    # Lire la première feuille
    xlsx.default_sheet = xlsx.sheets.first

    # Créer une liste pour stocker les données
    @calendriers = []

    # Parcourir chaque ligne et extraire les données
    2.upto(xlsx.last_row) do |line|
      debut = xlsx.cell(line, 'A')
      fin = xlsx.cell(line, 'B')
      competition = xlsx.cell(line, 'C')
      @calendriers << { debut: debut, fin: fin, competition: competition }
    end
  end
end
