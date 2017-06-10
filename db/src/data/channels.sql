create table data.channels ( -- df: mult=3.0
	id    serial primary key,
	name  text not null,
	owner_id int references data.users(id) default request.user_id()
);
-- the default policy should be to enable RLS for all tables then selectively allow access to rows
alter table data.channels enable row level security;
