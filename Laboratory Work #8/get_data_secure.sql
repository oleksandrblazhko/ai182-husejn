CREATE OR REPLACE FUNCTION get_data(worker_name VARCHAR)
RETURNS TABLE (p_id INTEGER, name VARCHAR, bd date) AS $$
DECLARE
	str VARCHAR;
BEGIN
	str := 'SELECT p_id, name, bd FROM worker WHERE name = $1';
	RAISE NOTICE 'Query=%', str;
	RETURN QUERY EXECUTE str USING worker_name;
END;
$$ LANGUAGE plpgsql;
