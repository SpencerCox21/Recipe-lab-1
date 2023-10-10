create table user(
    id serial primary key,
    email varchar(100) unique,
    password varchar(100)
);

create table ingredients(
    id serial primary key,
    food varchar(64),
    drink varchar(64),
    snack varchar(64)
);

create table recipes(
    id serial primary key,
    ingredients_id int not null references ingredients(id),
    instructions carchar(1000),
    is_public boolean def('TRUE')
);

create table grocery(
    id serial primary key, 
    ingredients_id int references ingredients(id),
    groceries varchar(80)
);

create table occasions(
    id serial primary key,
    resipes_id int references recipes(id),
    occasion varchar(80)
);

create table user_profile(
    id int primary key references user(id),
    user_email int references user(email),
    recipes_id int references recipes(id),
    occasion_id int references occasion(id),
    grocery_id int references grocery(id)
);




insert into user (email, password) values
('email@email.com', 'thing');

insert into ingredients (food, drink, snack) values 
('food stuffs', 'soda stuffs', 'snackage');

insert into recipies (ingredients_id, instructions, is_public) values
(1, 'Eat chicken raw', 'false');

insert into grocery (ingredients_id, groceries) values 
(1, 'chicken');

insert into user_profile (id, users_email, recipes_id, occasion_id, grocery_id) values
(1, 'email@email.com', 1, null, 1);


