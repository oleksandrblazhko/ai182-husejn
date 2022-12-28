create function get_data(
name_ character varying,
v_user_name character varying,
v_token character varying) 
  returns TABLE(p_id integer, name character varying, bd date) 
  language plpgsql 
as $$ 
DECLARE str VARCHAR;
BEGIN CALL sso_control(v_user_name,v_token); 
  str := 'SELECT p_id, name, bd FROM worker WHERE name = ''' || name_ || ''''; 
  RAISE NOTICE 'Query=%', str; 
  RETURN QUERY EXECUTE str; 
END; 
$$;
