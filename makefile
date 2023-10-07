all:
	docker-compose up -d

create_db:
	docker exec -it federation-db-1 psql -U postgres -f /opt/sql/createdb.sql

start_liquidbase:
liquibase --url=jdbc:postgresql://localhost:5432/orders-srv --username=postgres --password=pass123 --changeLogFile=db.changelog.yaml generateChangeLog
