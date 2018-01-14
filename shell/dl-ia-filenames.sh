#Download the filenames for the Archive Item and get the mp3 filenames and save in a csv file.
ia metadata bAlamodinI-04 | jq '.files[].name' | grep mp3 > iab4.csv
