docker run -d -it \
    -e POSTGRES_USER="root" \
    -e POSTGRES_PASSWORD="root" \
    -e POSTGRES_DB="ny_taxi" \
    -v /Users/khondamirrakhmatov/Documents/DSc/DataTalks/week1/postgres_dbs_folder/ny_taxi_postgres_data:/var/lib/postgresql/data \
    -p 5432:5432 \
    postgres:13

pgcli - postgres command line client
There was problem with pgcli on my Mac (Intel). I've solved this by the instructions from https://www.pgcli.com/install

pgcli -h localhost -p 5432 -u root -d ny_taxi 
\dt - list of tables
\d - description of table

python3 -m notebook - to run jupyter

head -n 10 <filename>.csv > <newfilename>.csv - saving the first 100 lines of original file into new file
wc <filename> - word count in the file
wc -l <filename> - line count in the file 
