#!/bin/bash

# Must be an absolute path
wallpaperDir="/Volumes/Data/norman/Pictures/mikuwp"

hour=`date +"%H"`

morning_1_hrs=("06")
morning_2_hrs=("07" "08")
morning_3_hrs=("09" "10")
noon_hrs=("11" "12")
afternoon_1_hrs=("13" "14")
afternoon_2_hrs=("15" "16")
sunset_hrs=("17")
evening_1_hrs=("18" "19")
evening_2_hrs=("20" "21")
night_hrs=("22" "23" "00" "01" "02" "03" "04" "05")

inArray () { 
	local seeking=$1
	local array="$2[@]"
	local in="false"
	for element in "${!array}"; do
		if [[ $element == $seeking ]]; then
			in="true"
			break
		fi
	done
	echo "$in"
}

# Parameters: dark|light
setMode()
{
	echo "Changing the mode into $1 mode"
	osascript "${wallpaperDir}/applescripts/${1}mode.scpt"
}

# Parameter: filename without extension (e.g. sunset, morning_1)
setWallpaper() {
	path="${wallpaperDir}/${1}.jpg"
	echo "Changing the desktop wallpaper to $path"
	osascript -e "tell application \"Finder\" to set desktop picture to POSIX file \"$path\""
}


if [ "$( inArray "$hour" morning_1_hrs )" == "true" ]; then
	setWallpaper "morning_1"
	setMode "light"
elif [ "$( inArray "$hour" morning_2_hrs )" == "true" ]; then
	setWallpaper "morning_2"
	setMode "light"
elif [ "$( inArray "$hour" morning_3_hrs )" == "true" ]; then
	setWallpaper "morning_3"
	setMode "light"
elif [ "$( inArray "$hour" noon_hrs )" == "true" ]; then
	setWallpaper "noon"
	setMode "light"
elif [ "$( inArray "$hour" afternoon_1_hrs )" == "true" ]; then
	setWallpaper "afternoon_1"
	setMode "light"
elif [ "$( inArray "$hour" afternoon_2_hrs )" == "true" ]; then
	setWallpaper "afternoon_2"
	setMode "light"
elif [ "$( inArray "$hour" sunset_hrs )" == "true" ]; then
	setWallpaper "sunset"
	setMode "light"
elif [ "$( inArray "$hour" evening_1_hrs )" == "true" ]; then
	setWallpaper "evening_1"
	setMode "dark"
elif [ "$( inArray "$hour" evening_2_hrs )" == "true" ]; then
	setWallpaper "evening_2"
	setMode "dark"
elif [ "$( inArray "$hour" night_hrs )" == "true" ]; then
	setWallpaper "night"
	setMode "dark"
else
	echo "An error occured. Please check the arrays in /usr/bin/dynamicwallpaper.sh"
fi
