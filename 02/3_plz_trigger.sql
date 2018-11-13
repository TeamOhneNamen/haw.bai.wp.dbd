CREATE OR REPLACE TRIGGER plz_check
BEFORE INSERT OR UPDATE ON Lieferanten 
FOR EACH ROW
DECLARE
    results number(2) := 0;
BEGIN
    SELECT COUNT(*) INTO results FROM GERKEN.plzverzeichnis WHERE plz = :new.plz AND ort = :new.ort;
    IF results = 0
	THEN
		RAISE_APPLICATION_ERROR( -20001, 'PLZ und Ort passen nicht zusammen' );
	END IF;
END;
/
