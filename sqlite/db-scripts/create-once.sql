/* Setup a sqlite database that would be used for processing.
 */
--Staging Tables for Internet Archive (IA) files
CREATE TABLE "fnamestg"(filename text);
--Table to play around and generate titles from filenames
CREATE TABLE "fnames"(filename text, title text);
