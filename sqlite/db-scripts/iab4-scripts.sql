--Build the Titles from filenames. 
--This is a data correction process expected to be done just once.
--This logic would be moved to when the ID3 Tag is created on the audio file.

--Pull the text after 17 characters from the filename
update fnames set title = substr(filename, 17);

update fnames set title = replace(title,'.mp3','');


--Unfortunately some Manual updates in Spreadsheet had to be done to remove some names at end of files

--Remove the hypens and replace with space in Title
update fnames set title = substr(title, 17);
update fnames set title = replace(title, '-',' ');
update fnames set title = substr(filename, 4, 7) || ' ' || title;



--ia metadata bAlamodinI-05 --target="files/SS-2015-01-pg23-adhyApanaM-mama-dharmaH-MuniN.mp3" --modify="title:adhyApanaM mama dharmaH"
.output updia.sh
select 'ia metadata bAlamodinI-04 --target="files/' 
|| filename 
|| '" --modify="title:' 
|| title
|| '"' as stmt
from fnames
;
.output stdout

