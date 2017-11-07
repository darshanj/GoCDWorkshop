#!/bin/bash
set -e

psql -v ON_ERROR_STOP=1 --username "$POSTGRES_USER" -d "$POSTGRES_DB" <<-EOSQL

CREATE TABLE "$POSTGRES_DB" (
"id" SERIAL,
	"firstName" varchar NOT NULL,
	"lastName" varchar NOT NULL,
	"phoneNumber" varchar NOT NULL,
	"email" varchar NOT NULL,
	"address" varchar NOT null,
	"createdAt" TIMESTAMP default now(),
	"updatedAt" TIMESTAMP default now(),
	"modifiedAt" TIMESTAMP default now()
)
WITH (
	OIDS=FALSE
);

EOSQL