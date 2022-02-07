#!/bin/bash
#
# ===========================================================
# Based on script from @Anachron's i3blocks, as well as 
# @Addy's icon additions and @Nili's network-connection check
# Mod by @ceeslans, to draw icons from tint2 config folder
# ===========================================================

# Open Weather Map API code, register to http://openweathermap.org to get one :
API_KEY=""

# Check on http://openweathermap.org/find :
CITY_ID="1668341"

# Select applicable temperature symbol "˚C" or "˚F" :
SYMBOL_CELSIUS="˚C"

# Change "Text" to your preferred language :
TEXT_SNOW="Snow"
TEXT_RAINY="Rainy"
TEXT_DRIZZLE="Drizzle"
TEXT_SHOWERS="Showers"
TEXT_SUNNY="Sunny"
TEXT_CLEAR="Clear"
TEXT_CLOUDY="Cloudy"
TEXT_OVERCAST="Overcast"
TEXT_STORM="Storm"
TEXT_FOG="Fog"

# Show Papirus weather-icons :
ICONPATH="$HOME/.config/tint2/executors/icons/weather/"
# or show original openweathermap weather-icons :
#ICONPATH="$HOME/.config/tint2/executors/icons/weather/openweathermap/"

# Don't change these lines, unless you know what you're doing...
#if ping -qc1 1.1.1.1 >/dev/null; then
WEATHER_URL="http://api.openweathermap.org/data/2.5/weather?id=${CITY_ID}&appid=${API_KEY}&units=metric"
#else
#	echo "${ICONPATH}404.png"
#	echo "Link Down"
#fi

WEATHER_INFO=$(wget -qO- "${WEATHER_URL}")
WEATHER_MAIN=$(echo "${WEATHER_INFO}" | grep -o -e '\"main\":\"[A-Za-z]*\"' | awk -F ':' '{print $2}' | tr -d '"')
WEATHER_TEMP=$(echo "${WEATHER_INFO}" | grep -o -e '\"temp\":\-\?[0-9]*' | awk -F ':' '{print $2}' | tr -d '"')
WEATHER_ICON=$(echo "${WEATHER_INFO}" | grep -o -e '\"icon\":\"[0-9a-z]*\"' | awk -F ':' '{print $2}' | tr -d '"')

# To add short condition description in the toolbar, comment out # ${TEXT-*} :

if [[ "${WEATHER_MAIN}" = *Snow* ]]; then
	echo "${ICONPATH}${WEATHER_ICON}"
    echo "${WEATHER_TEMP}${SYMBOL_CELSIUS}" # "${TEXT_SNOW}"
    
elif [[ "${WEATHER_MAIN}" = *Rain* ]]; then
	echo "${ICONPATH}${WEATHER_ICON}"
	echo "${WEATHER_TEMP}${SYMBOL_CELSIUS}"	# "${TEXT_RAINY}"

elif [[ "${WEATHER_MAIN}" = *Drizzle* ]]; then
	echo "${ICONPATH}${WEATHER_ICON}"
	echo "${WEATHER_TEMP}${SYMBOL_CELSIUS}" # "${TEXT_DRIZZLE}"

elif [[ "${WEATHER_MAIN}" = *Shower* ]]; then
	echo "${ICONPATH}${WEATHER_ICON}"
	echo "${WEATHER_TEMP}${SYMBOL_CELSIUS}" # "${TEXT_SHOWERS}"

elif [[ "${WEATHER_MAIN}" = *Sunny* ]]; then
	echo "${ICONPATH}${WEATHER_ICON}"
	echo "${WEATHER_TEMP}${SYMBOL_CELSIUS}" # "${TEXT_SUNNY}"
	
elif [[ "${WEATHER_MAIN}" = *Clear* ]]; then
	echo "${ICONPATH}${WEATHER_ICON}"
	echo "${WEATHER_TEMP}${SYMBOL_CELSIUS}" # "${TEXT_CLEAR}"
	
elif [[ "${WEATHER_MAIN}" = *Cloud* ]]; then
	echo "${ICONPATH}${WEATHER_ICON}"
    echo "${WEATHER_TEMP}${SYMBOL_CELSIUS}" # "${TEXT_CLOUDY}"

elif [[ "${WEATHER_MAIN}" = *Overcast* ]]; then
	echo "${ICONPATH}${WEATHER_ICON}"
    echo "${WEATHER_TEMP}${SYMBOL_CELSIUS}" # "${TEXT_OVERCAST}"
    
elif [[ "${WEATHER_MAIN}" = *Storm* ]]; then
	echo "${ICONPATH}${WEATHER_ICON}"
	echo "${WEATHER_TEMP}${SYMBOL_CELSIUS}" # "${TEXT_STORM}"
    
elif [[ "${WEATHER_MAIN}" = *Fog* ]]; then
	echo "${ICONPATH}${WEATHER_ICON}"
	echo "${WEATHER_TEMP}${SYMBOL_CELSIUS}" # "${TEXT_FOG}"

else
	echo "${ICONPATH}04.png"
    echo "${WEATHER_TEMP}${SYMBOL_CELSIUS} ${WEATHER_MAIN}"
fi 

