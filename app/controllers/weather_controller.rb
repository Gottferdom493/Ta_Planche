# app/controllers/weather_controller.rb
class WeatherController < ApplicationController

  def forecast
    # Coordonnées de Bordeaux
    lat = 44.8378
    lng = -0.5792

    # Effectuez vos appels à l'API météo ici et récupérez la température
    temperature = fetch_temperature(lat, lng)

    respond_to do |format|
      format.json { render json: { temperature: temperature } }
    end
  end

  private

  def fetch_temperature(_lat, _lng)
    # Implémentez la logique pour récupérer la température depuis votre API météo
    # Remplacez cette ligne par votre code réel
    # Exemple : temperature = YourWeatherAPI.get_temperature(lat, lng)
    temperature = 25.5  # Remplacez ceci par la vraie température obtenue de votre API
    return temperature
  end
end
