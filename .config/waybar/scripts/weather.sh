#!/bin/bash

# API key from OpenWeatherMap
API_KEY="008bd870fe247b2edd5530aa1dbb978d"

# City and country code
CITY="Ratlām"
COUNTRY_CODE="IN"

# Fetch weather data from OpenWeatherMap
weather=$(curl -sS "http://api.openweathermap.org/data/2.5/weather?q=${CITY},${COUNTRY_CODE}&appid=${API_KEY}&units=metric")

# Extract weather condition and temperature
condition=$(echo "$weather" | jq -r '.weather[0].main')
temperature=$(echo "$weather" | jq -r '.main.temp')
# Round the temperature to the nearest integer
rounded_temperature=$(printf "%.0f" "$temperature")

# Select the appropriate icon according to the weather condition.
case $condition in
"Clear") icon="" ;;
"Clouds") icon=" " ;;
"Rain") icon=" " ;;
"Drizzle") icon=" " ;;
"Thunderstorm") icon=" " ;;
"Snow") icon=" " ;;
"Mist" | "Fog" | "Haze") icon=" " ;;
*) icon=" " ;;
esac

# Print the weather information.
echo "$icon ${rounded_temperature}°"
