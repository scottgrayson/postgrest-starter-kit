
-- This file is generated by the DataFiller free software.
-- This software comes without any warranty whatsoever.
-- Use at your own risk. Beware, this script may destroy your data!
-- License is GPLv3, see http://www.gnu.org/copyleft/gpl.html
-- Get latest version from http://www.coelho.net/datafiller.html

-- Data generated by: /usr/local/bin/datafiller
-- Version 2.0.1-dev (r832 on 2015-11-01)
-- For postgresql on 2017-05-03T12:34:39.879063 (UTC)
-- 
-- fill table data.users (2)
\echo # filling table data.users (2)
COPY data.users (id,name,email,"password") FROM STDIN (FREEZE ON);
1	alice	alice@email.com	pass
2	bob	bob@email.com	pass
\.
-- 
-- fill table data.channels (6)
\echo # filling table data.channels (6)
COPY data.channels (id,name,owner_id) FROM STDIN (FREEZE ON);
1	channel_1	1
2	channel_2	1
3	channel_3	1
4	channel_4	2
5	channel_5	2
6	channel_6	2
\.
-- fill table data.items (6)
\echo # filling table data.items (6)
COPY data.items (id,name,private,owner_id) FROM STDIN (FREEZE ON);
1	item_1	FALSE	1
2	item_2	TRUE	1
3	item_3	FALSE	1
4	item_4	TRUE	2
5	item_5	TRUE	2
6	item_6	FALSE	2
\.
-- 
-- fill table data.subitems (12)
\echo # filling table data.subitems (12)
COPY data.subitems (id,name,item_id,owner_id) FROM STDIN (FREEZE ON);
1	subitem_1	1	1
2	subitem_2	1	1
3	subitem_3	2	1
4	subitem_4	2	1
5	subitem_5	3	1
6	subitem_6	3	1
7	subitem_7	4	2
8	subitem_8	4	2
9	subitem_9	5	2
10	subitem_10	5	2
11	subitem_11	6	2
12	subitem_12	6	2
\.
-- 
-- restart sequences
ALTER SEQUENCE data.users_id_seq RESTART WITH 3;
ALTER SEQUENCE data.items_id_seq RESTART WITH 7;
ALTER SEQUENCE data.channels_id_seq RESTART WITH 7;
ALTER SEQUENCE data.subitems_id_seq RESTART WITH 13;
-- 
-- analyze modified tables
ANALYZE data.users;
ANALYZE data.items;
ANALYZE data.channels;
ANALYZE data.subitems;
