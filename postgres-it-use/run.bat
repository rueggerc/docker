@echo on
docker container run -d^ 
 -e POSTGRES_USER=chris^
 -e POSTGRES_PASSWORD=dakota^
 -e POSTGRES_DB=rueggerllc^
 -p 5432:5432^
 --name postres-it-use^
 rueggerc/postgres-it:1.0
