CREATE TABLE connessioni(
   ID             BIGINT  NOT NULL PRIMARY KEY
  ,DURATION       BIGINT  NOT NULL
  ,DOWNLOAD       BIGINT  NOT NULL
  ,UPLOAD         BIGINT  NOT NULL
  ,DOMAIN         VARCHAR(14) NOT NULL
  ,MUNICIPIO      VARCHAR(14) NOT NULL
  ,SERVICEPROFILE VARCHAR(17) NOT NULL
  ,DTLN           VARCHAR(2) NOT NULL
  ,STARTTIMESTAMP TIMESTAMPTZ NOT NULL
  ,ENDTIMESTAMP   TIMESTAMPTZ NOT NULL
  ,POSIZIONE      VARCHAR(55) NOT NULL
  ,LATITUDINE     NUMERIC(18,15) NOT NULL
  ,LONGITUDINE    NUMERIC(18,15) NOT NULL
);

\COPY connessioni FROM '/docker-entrypoint-initdb.d/dataset_connessioni.csv' DELIMITER ',' CSV HEADER;