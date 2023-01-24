insert into users (
	name,
	last_name,
	email,
	password,
	age,
	country 
) values (
	'Frank',
	'Zavaleta',
	'frank@unacem.pe',
	'PablitoClavoUnClavito',
	'29',
	'Peru'
) , (
	'Panchito',
	'Alimaña',
	'panchito@ratatouille.com',
	'PanchitoAlimaña',
	'55',
	'Etiopia'
);


insert into categories (
	name
) values (
	'Technology'
) , (
	'Gardening'
) , (
	'high kitchen'
);


insert into courses (
	title,
	description,
	level,
	teacher,
	user_id,
	category_id
) values (
	'Basic Python',
	'In this course you will learn the basics of Python.',
	'B',
	'Andres Calamaro',
	'1',
	'1'
) , (
	'Grilled Meats',
	'In this course you will learn the ancestral techniques for meat.',
	'M',
	'Pablo Escobar',
	'2',
	'3'
);


insert into course_video (
	title,
	url,
	course_id 
) values (
	'Introduction to Python',
	'https://www.youtube.com/watch?v=AWLpDAKed70',
	'1'
) , (
	'Seasoning the meat',
	'https://www.youtube.com/watch?v=qC2JJs6DolY',
	'2'
);