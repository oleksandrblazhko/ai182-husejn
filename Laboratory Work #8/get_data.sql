CREATE OR REPLACE FUNCTION get_data(name_ VARCHAR)
RETURNS TABLE(p_id INTEGER, name VARCHAR, bd date)
AS $$
DECLARE
	str VARCHAR;
BEGIN
	str := 'SELECT * from worker where name = ''' || name_ || '''';
	RAISE NOTICE 'Query=%' ,str;
	RETURN QUERY EXECUTE str;
END;
$$ LANGUAGE plpgsql;
