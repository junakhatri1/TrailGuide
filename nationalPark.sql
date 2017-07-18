USE NationalPark;

CREATE TABLE park
(
park_id							Integer							IDENTITY(1,1) NOT NULL,
name							varchar(100)					NOT NULL,
location						varchar(100)					NOT NULL,
state							varchar(100)					NOT NULL,
area							Decimal							NOT NULL,
date_of_establishment			Date							NOT NULL,
recreation_visitorsIn2016		Integer							NULL,
description						varchar(max)					NOT NULL,

CONSTRAINT pk_park PRIMARY KEY (park_id),
CONSTRAINT ux_name UNIQUE (name)
);

CREATE TABLE trail    
(
trail_id						Integer							IDENTITY(1,1) NOT NULL,
name							varchar(100)					NOT NULL,
park_id							Integer							NOT NULL,
difficulty_level				varchar(100)					NOT NULL,		
distance						decimal							NOT NULL,


CONSTRAINT pk_trail PRIMARY KEY (trail_id),
CONSTRAINT fk_trail_park FOREIGN KEY (park_id) REFERENCES park(park_id)
);


CREATE TABLE activity
(
activity_id						Integer								IDENTITY(1,1) NOT NULL,
name							varchar(100)						NOT NULL,	

CONSTRAINT pk_activities PRIMARY KEY (activity_id),

);


CREATE TABLE park_activity
(
park_id								Integer							NOT NULL,
activity_id							Integer							NOT NULL,

CONSTRAINT pk_park_activity PRIMARY KEY (park_id, activity_id),
CONSTRAINT fk_park_activity FOREIGN KEY (park_id) REFERENCES park(park_id),
CONSTRAINT fk_activity_park  FOREIGN KEY (activity_id) REFERENCES activity(activity_id)

);


CREATE TABLE userLogin
(

user_id								integer							IDENTITY(1,1) NOT NULL,
username							varchar(100)						NOT NULL,

CONSTRAINT pk_users PRIMARY KEY (user_id)
);

	
CREATE TABLE itinerary
(
itinerary_id					Integer									IDENTITY(1,1) NOT NULL,
user_id						Integer									NOT NULL,
park_id						Integer									NOT NULL,
name						varchar(100)							NOT NULL,
notes						varchar(100)							NOT NULL,
start_date					date									NOT NULL,
end_date					date									NOT NULL,
create_date					datetime								NOT NULL,
CONSTRAINT pk_itinerary PRIMARY KEY(itinerary_id),
CONSTRAINT fk_itinerary_userLogin FOREIGN KEY (user_id) REFERENCES userLogin(user_id),
CONSTRAINT fk_itinerary_park FOREIGN KEY (park_id) REFERENCES park(park_id)

);


--CREATE TABLE itenaryStops
--(
--itenary_stops_id			Integer				IDENTITY(1,1) NOT NULL,
--itenary_id					Integer				NOT NULL,		
--trail_id					Integer				NOT NULL,
--start_time					Time				NOT NULL,									
--end_time					Integer				NOT NULL,

--CONSTRAINT pk_itenary PRIMARY KEY(itenary_stops_id),
--CONSTRAINT fk_itenaryStops_itenary FOREIGN KEY (itenary_id) REFERENCES itenary(itenary_id),
--CONSTRAINT fk_itenaryStops_trail FOREIGN KEY (trail_id) REFERENCES trail(trail_id),

--);

--Adding Park
INSERT INTO park(name, location, state, area, date_of_establishment, recreation_visitorsIn2016, description) 
VALUES('Acadia', '44.35N 68.21W', 'Maine', 49057.36,'Feb 26,1919', 3303393, 'Covering most of Mount Desert Island and other coastal islands, Acadia features the tallest mountain on the Atlantic coast of the United States, granite peaks, ocean shoreline, woodlands, and lakes. There are freshwater, estuary, forest, and intertidal habitats');

INSERT INTO park(name, location, state, area, date_of_establishment, recreation_visitorsIn2016, description) 
VALUES('American Samoa', '14.25N 170.68W', 'American Samoa(Island)', 8256.67,'Oct 31,1988', 28892, 'The southernmost National Park is on three Samoan islands and protects coral reefs, rainforests, volcanic mountains, and white beaches. The area is also home to flying foxes, brown boobies, sea turtles, and 900 species of fish');
	
INSERT INTO park(name, location, state, area, date_of_establishment, recreation_visitorsIn2016, description) 
VALUES('Arches', '38.68N 109.57W', 'Utah', 76678.98,'Nov 12,1971', 1585718, 'This site features more than 2,000 natural sandstone arches, with some of the most popular arches in the park being Delicate Arch, Landscape Arch and Double Arch. Millions of years of erosion have created these structures located in a desert climate where the arid ground has life-sustaining biological soil crusts and potholes that serve as natural water-collecting basins. Other geologic formations include stone pinnacles, fins, and balancing rocks');

INSERT INTO park(name, location, state, area, date_of_establishment, recreation_visitorsIn2016, description) 
VALUES('Badlands', '43.75N 102.50W', 'South Dakota', 242755.94,'Nov 10,1978', 996263, 'The Badlands are a collection of buttes, pinnacles, spires, and mixed-grass prairies. The White River Badlands contain the largest assemblage of known late Eocene and Oligocene mammal fossils. The wildlife includes bison, bighorn sheep, black-footed ferrets, and prairie dogs');

INSERT INTO park(name, location, state, area, date_of_establishment, recreation_visitorsIn2016, description) 
VALUES('Big Bend', '29.25N 103.25W', 'Texas', 801163.21,'June 12,1944', 388290, 'Named for the prominent bend in the Rio Grande along the US–Mexico border, this park encompasses a large and remote part of the Chihuahuan Desert. Its main attraction is backcountry recreation in the arid Chisos Mountains and in canyons along the river. A wide variety of Cretaceous and Tertiary fossils as well as cultural artifacts of Native Americans also exist within its borders.');
	

--Adding Activities
INSERT INTO activity(name)	VALUES('Biking');
INSERT INTO activity(name)	VALUES('Hiking');
INSERT INTO activity(name)	VALUES('Kayaking');
INSERT INTO activity(name)	VALUES('Camping');
INSERT INTO activity(name)	VALUES('Horseback-Riding');
INSERT INTO activity(name)	VALUES('Rafting');
INSERT INTO activity(name)	VALUES('Rock climbing');
INSERT INTO activity(name)	VALUES('Spleunking');
INSERT INTO activity(name)	VALUES('Paddling');
INSERT INTO activity(name)	VALUES('Sandboarding');
INSERT INTO activity(name)	VALUES('Wildlife Viewing');
INSERT INTO activity(name) VALUES ('snorkeling')

--Adding Park and Activities
	INSERT INTO park_activity(park_id, activity_id)	VALUES(1,1);
	INSERT INTO park_activity(park_id, activity_id)	VALUES(1,2);
	INSERT INTO park_activity(park_id, activity_id)	VALUES(1,5);
	INSERT INTO park_activity(park_id, activity_id)	VALUES(1,11);
	INSERT INTO park_activity(park_id, activity_id)	VALUES(2,11);
	INSERT INTO park_activity(park_id, activity_id)	VALUES(2,12);
	INSERT INTO park_activity(park_id, activity_id)	VALUES(3,2);
	INSERT INTO park_activity(park_id, activity_id)	VALUES(3,4);
	INSERT INTO park_activity(park_id, activity_id)	VALUES(3,5);
	INSERT INTO park_activity(park_id, activity_id)	VALUES(3,7);
	INSERT INTO park_activity(park_id, activity_id)	VALUES(4,2);
	INSERT INTO park_activity(park_id, activity_id)	VALUES(4,4);
	INSERT INTO park_activity(park_id, activity_id)	VALUES(4,1);
	INSERT INTO park_activity(park_id, activity_id)	VALUES(5,2);
	INSERT INTO park_activity(park_id, activity_id)	VALUES(5,11);
	INSERT INTO park_activity(park_id, activity_id)	VALUES(5,4);
	INSERT INTO park_activity(park_id, activity_id)	VALUES(5,5);
	INSERT INTO park_activity(park_id, activity_id)	VALUES(5,6);
	INSERT INTO park_activity(park_id, activity_id)	VALUES(5,3);
	
--Adding trails 
INSERT INTO trail(name, park_id, difficulty_level, distance ) VALUES('Great Meadow Loop',1, 'Easy', 2);
INSERT INTO trail(name, park_id, difficulty_level, distance ) VALUES('Ocean Path',1, 'Easy', 4.4);
INSERT INTO trail(name, park_id, difficulty_level, distance ) VALUES('Acadia Mountain Trail',1, 'Strenuous', 2.5);	
INSERT INTO trail(name, park_id, difficulty_level, distance ) VALUES('Beehive Trail',1, 'Strenuous', 1.6);	
INSERT INTO trail(name, park_id, difficulty_level, distance ) VALUES('Sargent Mountain',1, 'Strenuous', 4.6);	
INSERT INTO trail(name, park_id, difficulty_level, distance ) VALUES('Acadia Mountain Trail',1, 'Strenuous', 2.5);	
INSERT INTO trail(name, park_id, difficulty_level, distance ) VALUES('Tuafaunua Trail',2, 'Easy', 2.2);	
INSERT INTO trail(name, park_id, difficulty_level, distance ) VALUES('Mt. Alava Trail',2, 'Strenuous', 7);		
INSERT INTO trail(name, park_id, difficulty_level, distance ) VALUES('Pola Island Trail',2, 'Easy', 0.1);	
INSERT INTO trail(name, park_id, difficulty_level, distance ) VALUES('The Windows',3, 'Easy', 1);
INSERT INTO trail(name, park_id, difficulty_level, distance ) VALUES('Broken Arch Loop',3, 'Easy', 2.0);	
INSERT INTO trail(name, park_id, difficulty_level, distance ) VALUES('Double O Arch',3, 'Strenuous', 4.5);	
INSERT INTO trail(name, park_id, difficulty_level, distance ) VALUES('Primitive Trail at Devils Garden',3, 'Strenuous', 7.2);	
INSERT INTO trail(name, park_id, difficulty_level, distance ) VALUES('Notch Trail',4, 'Easy', 1.5);	
INSERT INTO trail(name, park_id, difficulty_level, distance ) VALUES('Castle Trail',4, 'Easy', 10);	
INSERT INTO trail(name, park_id, difficulty_level, distance ) VALUES('Saddle Pass',4, 'Strenuous', 0.25);	
INSERT INTO trail(name, park_id, difficulty_level, distance ) VALUES('Chisos Basi Loop Trail',5, 'Easy', 1.8);	
INSERT INTO trail(name, park_id, difficulty_level, distance ) VALUES('Lost Mine Trail',5, 'Easy', 4.8);	
INSERT INTO trail(name, park_id, difficulty_level, distance ) VALUES('Emory Peak',5, 'Strenuous', 10.5);	
INSERT INTO trail(name, park_id, difficulty_level, distance ) VALUES('South Rim',5, 'Strenuous', 14.5);	
INSERT INTO trail(name, park_id, difficulty_level, distance ) VALUES('Boot Canyon Trail',5, 'Strenuous', 3.5);	


	
	
	