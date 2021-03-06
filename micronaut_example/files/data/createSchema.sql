DROP TABLE PET;
DROP TABLE OWNER;


CREATE TABLE OWNER (ID NUMBER(19) GENERATED ALWAYS AS IDENTITY PRIMARY KEY NOT NULL,
                    AGE NUMBER(10) NOT NULL,
                    NAME VARCHAR(255) NOT NULL)
/

CREATE TABLE PET (ID NUMBER GENERATED ALWAYS AS IDENTITY PRIMARY KEY NOT NULL,
                  OWNER_ID NUMBER(19) NOT NULL,
                  NAME VARCHAR(255) NOT NULL,
                  TYPE VARCHAR(255) NOT NULL)
/

ALTER TABLE PET ADD (CONSTRAINT fk_owner
                     FOREIGN KEY (OWNER_ID)
                     REFERENCES OWNER (ID)
                     ON DELETE CASCADE
                     ENABLE VALIDATE)
/

EXIT;
