document.addEventListener('DOMContentLoaded', function() {
  // Faites une requête à votre API Rails pour obtenir la température
  fetch('/weather/forecast')
    .then(response => response.json())
    .then(data => {
      // Affichez la température sur la page d'index
      const temperatureElement = document.getElementById('temperature');
      temperatureElement.innerHTML = `Température à Bordeaux : ${data.temperature} °C`;
    })
    .catch(error => console.error('Error:', error));
});
