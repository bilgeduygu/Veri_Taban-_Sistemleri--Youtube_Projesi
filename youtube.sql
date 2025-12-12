CREATE DATABASE YouTube;
USE YouTube;

CREATE TABLE YT_Channel(
	channel_id INT UNSIGNED AUTO_INCREMENT PRIMARY KEY,
    channel_name VARCHAR(50) NOT NULL,
    num_of_subscriber INT NOT NULL,
    num_of_view BIGINT UNSIGNED NOT NULL,
    num_of_video INT NOT NULL,
    location VARCHAR(30),
    date_of_join DATE NOT NULL
);

CREATE TABLE YT_User(
	user_id INT UNSIGNED AUTO_INCREMENT PRIMARY KEY,
    username VARCHAR(50) NOT NULL,
    num_of_download INT NOT NULL,
    num_of_list INT NOT NULL,
    subscription_type VARCHAR(20) NOT NULL,
    total_subscription INT NOT NULL,
    num_of_liked_video INT NOT NULL
);

CREATE TABLE YT_Video(
	video_id INT UNSIGNED AUTO_INCREMENT PRIMARY KEY,
    video_name VARCHAR(70) NOT NULL,
    duration_of_video TIME NOT NULL,
    num_of_view INT NOT NULL,
    publication_date DATE NOT NULL,
    num_of_like INT NOT NULL,
    num_of_dislike INT NOT NULL,
    num_of_comment INT NOT NULL,
    channel_id INT UNSIGNED,
    FOREIGN KEY(channel_id) REFERENCES YT_Channel(channel_id)
);

CREATE TABLE YT_Singer(
	singer_id INT UNSIGNED AUTO_INCREMENT PRIMARY KEY,
    singer_name VARCHAR(50) NOT NULL,
    num_of_song INT NOT NULL,
    num_of_album INT NOT NULL,
    num_of_subscriber INT NOT NULL
);

CREATE TABLE YT_Album(
	album_id INT UNSIGNED AUTO_INCREMENT PRIMARY KEY,
    album_name VARCHAR(50) NOT NULL,
    num_of_song INT NOT NULL,
    duration_of_album TIME NOT NULL,
    release_year INT NOT NULL,
    album_type VARCHAR(10) NOT NULL
);

CREATE TABLE YT_Music(
	song_id INT UNSIGNED AUTO_INCREMENT PRIMARY KEY,
    song_name VARCHAR(50) NOT NULL,
    song_type VARCHAR(30) NOT NULL,
    singer_id INT UNSIGNED,
    FOREIGN KEY(singer_id) REFERENCES YT_Singer(singer_id),
    duration TIME NOT NULL,
    album_id INT UNSIGNED,
    FOREIGN KEY(album_id) REFERENCES YT_Album(album_id),
    song_language VARCHAR(20) NOT NULL,
    release_year INT NOT NULL
);

CREATE TABLE channel_user(
	CU_id INT UNSIGNED AUTO_INCREMENT PRIMARY KEY,
    channel_id INT UNSIGNED,
    FOREIGN KEY(channel_id) REFERENCES YT_Channel(channel_id),
    user_id INT UNSIGNED,
    FOREIGN KEY(user_id) REFERENCES YT_User(user_id)
);

CREATE TABLE user_video(
	UV_id INT UNSIGNED AUTO_INCREMENT PRIMARY KEY,
    user_id INT UNSIGNED,
    FOREIGN KEY(user_id) REFERENCES YT_User(user_id),
    video_id INT UNSIGNED,
    FOREIGN KEY(video_id) REFERENCES YT_Video(video_id)
);

CREATE TABLE user_music(
	UM_id INT UNSIGNED AUTO_INCREMENT PRIMARY KEY,
    user_id INT UNSIGNED,
    FOREIGN KEY(user_id) REFERENCES YT_User(user_id),
    song_id INT UNSIGNED,
    FOREIGN KEY(song_id) REFERENCES YT_Music(song_id)
);

-- Channel ------------------
INSERT INTO YT_Channel (channel_name,num_of_subscriber,num_of_view,num_of_video,location,date_of_join)
	VALUES ('National Geographic',15800000,4080707039,9503,'United States','2006-05-07');
INSERT INTO YT_Channel (channel_name,num_of_subscriber,num_of_view,num_of_video,location,date_of_join)
	VALUES ('Bob Ross',4410000,397797532,481,'United States','2011-03-09');
INSERT INTO YT_Channel (channel_name,num_of_subscriber,num_of_view,num_of_video,location,date_of_join)
	VALUES ('Google',6640000,2637455214,2367,'United States','2005-09-19');
INSERT INTO YT_Channel (channel_name,num_of_subscriber,num_of_view,num_of_video,location,date_of_join)
	VALUES ('PewDiePie',108000000,26651486094,4262,'United States','2010-04-29');
INSERT INTO YT_Channel (channel_name,num_of_subscriber,num_of_view,num_of_video,location,date_of_join)
	VALUES ('DW Documentary',2330000,328884450,627,'United States','2016-11-22');
INSERT INTO YT_Channel (channel_name,num_of_subscriber,num_of_view,num_of_video,location,date_of_join)
	VALUES ('BBC News',8850000,2239738381,12882,'United States','2006-04-08');
INSERT INTO YT_Channel (channel_name,num_of_subscriber,num_of_view,num_of_video,location,date_of_join)
	VALUES ('TED',18600000,1964524885,3541,'United States','2006-12-07');
INSERT INTO YT_Channel (channel_name,num_of_subscriber,num_of_view,num_of_video,location,date_of_join)
	VALUES ('Oscars',1850000,1146175702,3653,'United States','2006-02-03');
INSERT INTO YT_Channel (channel_name,num_of_subscriber,num_of_view,num_of_video,location,date_of_join)
	VALUES ('WIRED',7170000,2272898153,3137,'United States','2005-09-23');
INSERT INTO YT_Channel (channel_name,num_of_subscriber,num_of_view,num_of_video,location,date_of_join)
	VALUES ('Vogue',8890000,2373874453,2408,'United States','2008-06-30');

-- User ------------------
INSERT INTO YT_USER (username,num_of_download,num_of_list, subscription_type,total_subscription,num_of_liked_video)
    VALUES ('Nihan Dilara',0,5,'Free',170,243);
INSERT INTO YT_USER (username,num_of_download,num_of_list, subscription_type,total_subscription,num_of_liked_video)
    VALUES ('Bilge Duygu',13,9,'Premium',216,2076);
INSERT INTO YT_USER (username,num_of_download,num_of_list, subscription_type,total_subscription,num_of_liked_video)
    VALUES ('Burcu Aydın',0,2,'Free',158,1377);
INSERT INTO YT_USER (username,num_of_download,num_of_list, subscription_type,total_subscription,num_of_liked_video)
    VALUES ('Ezgi Karaşahin',0,11,'Free',344,52);
INSERT INTO YT_USER (username,num_of_download,num_of_list, subscription_type,total_subscription,num_of_liked_video)
    VALUES ('Ömer Türkgeldi',22,7,'Premium',259,157);
INSERT INTO YT_USER (username,num_of_download,num_of_list, subscription_type,total_subscription,num_of_liked_video)
    VALUES ('Fatih Heyal',5,19,'Premium',392,562);
INSERT INTO YT_USER (username,num_of_download,num_of_list, subscription_type,total_subscription,num_of_liked_video)
    VALUES ('Ennur Nalbantoğlu',0,2,'Free',117,10);
INSERT INTO YT_USER (username,num_of_download,num_of_list, subscription_type,total_subscription,num_of_liked_video)
    VALUES ('Büşra İnceoğlu',0,16,'Free',93,38);
INSERT INTO YT_USER (username,num_of_download,num_of_list, subscription_type,total_subscription,num_of_liked_video)
    VALUES ('Aybeniz Yalçın',37,22,'Premium',1002,1940);
INSERT INTO YT_USER (username,num_of_download,num_of_list, subscription_type,total_subscription,num_of_liked_video)
    VALUES ('Cansu Cebesoy',0,45,'Free',660,1756);

-- Video ------------------
SET FOREIGN_KEY_CHECKS = 0;
INSERT INTO YT_VIDEO (video_name,duration_of_video,num_of_view, publication_date,num_of_like,num_of_dislike,num_of_comment,channel_id)
	VALUES ('The Mystery of Queen Nefertiti','00:02:11',344063,'2020-08-23',6700,178,406,1);
INSERT INTO YT_VIDEO (video_name,duration_of_video,num_of_view, publication_date,num_of_like,num_of_dislike,num_of_comment,channel_id)
	VALUES ('Winter Frost','00:27:44',4168079,'2016-04-10',91000,1600,5183,2);
INSERT INTO YT_VIDEO (video_name,duration_of_video,num_of_view, publication_date,num_of_like,num_of_dislike,num_of_comment,channel_id)
	VALUES ('Cyberpunk - pART 5','02:52:21',873596,'2020-12-17',35000,911,955,4);
INSERT INTO YT_VIDEO (video_name,duration_of_video,num_of_view, publication_date,num_of_like,num_of_dislike,num_of_comment,channel_id)
	VALUES ('Year in Search 2020','00:03:00',49117655,'2020-12-08',144000,13000,10638,3);
INSERT INTO YT_VIDEO (video_name,duration_of_video,num_of_view, publication_date,num_of_like,num_of_dislike,num_of_comment,channel_id)
	VALUES ('Who is Mona Lisa?','00:42:26',2131070,'2020-07-04',18000,1100,2072,5);
INSERT INTO YT_VIDEO (video_name,duration_of_video,num_of_view, publication_date,num_of_like,num_of_dislike,num_of_comment,channel_id)
	VALUES ('The Ultimate Paper Airplane','00:07:35',11877187,'2018-01-10',173000,4100,14000,9);
INSERT INTO YT_VIDEO (video_name,duration_of_video,num_of_view, publication_date,num_of_like,num_of_dislike,num_of_comment,channel_id)
	VALUES ('Joaquin Phoenix wins Best Actor','00:05:41',6937218,'2020-03-11',216000,2700,13391,8);
INSERT INTO YT_VIDEO (video_name,duration_of_video,num_of_view, publication_date,num_of_like,num_of_dislike,num_of_comment,channel_id)
	VALUES ('24 Hours with Burna Boy','00:06:22',750851,'2020-08-28',31000,198,1291,10);
INSERT INTO YT_VIDEO (video_name,duration_of_video,num_of_view, publication_date,num_of_like,num_of_dislike,num_of_comment,channel_id)
	VALUES ('How do I know the Covid vaccine is safe?','00:02:51',107174,'2020-12-05',1000,638,2499,6);
INSERT INTO YT_VIDEO (video_name,duration_of_video,num_of_view, publication_date,num_of_like,num_of_dislike,num_of_comment,channel_id)
	VALUES ('Can we edit memories?','00:16:06',114754,'2020-06-14',3600,90,250,7);

-- Singer ------------------
INSERT INTO YT_Singer (singer_name,num_of_song,num_of_album,num_of_subscriber)
	VALUES ('Kansas',174,42,472000);
INSERT INTO YT_Singer (singer_name,num_of_song,num_of_album,num_of_subscriber)
	VALUES ('LP',61,42,3320000);
INSERT INTO YT_Singer (singer_name,num_of_song,num_of_album,num_of_subscriber)
	VALUES ('Alec Benjamin',24,2,3320000);
INSERT INTO YT_Singer (singer_name,num_of_song,num_of_album,num_of_subscriber)
	VALUES ('Muse',102,16,3090000);
INSERT INTO YT_Singer (singer_name,num_of_song,num_of_album,num_of_subscriber)
	VALUES ('grandson',39,16,772000);
INSERT INTO YT_Singer (singer_name,num_of_song,num_of_album,num_of_subscriber)
	VALUES ('Wye Oak',81,9,5690);
INSERT INTO YT_Singer (singer_name,num_of_song,num_of_album,num_of_subscriber)
	VALUES ('Indila',14,1,3900000);
INSERT INTO YT_Singer (singer_name,num_of_song,num_of_album,num_of_subscriber)
	VALUES ('Asaf Avidan',86,9,234000);
INSERT INTO YT_Singer (singer_name,num_of_song,num_of_album,num_of_subscriber)
	VALUES ('Elley Duhé',23,1,35900);
INSERT INTO YT_Singer (singer_name,num_of_song,num_of_album,num_of_subscriber)
	VALUES ('AURORA',63,4,1850000);

-- Album ------------------
INSERT INTO YT_Album (album_name,num_of_song,duration_of_album,release_year,album_type)
	VALUES ('Leftoverture',10,'00:54:00',1976,'LP');
INSERT INTO YT_Album (album_name,num_of_song,duration_of_album,release_year,album_type)
	VALUES ('Lost On You',16,'01:02:00',2017,'LP');
INSERT INTO YT_Album (album_name,num_of_song,duration_of_album,release_year,album_type)
	VALUES ('Narrated For You',12,'00:37:00',2018,'LP');
INSERT INTO YT_Album (album_name,num_of_song,duration_of_album,release_year,album_type)
	VALUES ('Black Holes And Revelations',12,'00:50:00',2006,'LP');
INSERT INTO YT_Album (album_name,num_of_song,duration_of_album,release_year,album_type)
	VALUES ('Civilian',10,'00:38:00',2011,'LP');
INSERT INTO YT_Album (album_name,num_of_song,duration_of_album,release_year,album_type)
	VALUES ('Mini World',10,'00:43:00',2014,'LP');
INSERT INTO YT_Album (album_name,num_of_song,duration_of_album,release_year,album_type)
	VALUES ('Gold Shadow',12,'00:44:00',2014,'LP');
INSERT INTO YT_Album (album_name,num_of_song,duration_of_album,release_year,album_type)
	VALUES ('All My Demons Greeting Me as a Friend',17,'01:04:00',2015,'LP');

-- Music ------------------
SET FOREIGN_KEY_CHECKS = 0;
INSERT INTO YT_Music (song_name,song_type,duration,song_language,release_year,singer_id,album_id)
    VALUES ('Carry On Wayward Son','Album','00:05:23','English','1976',1,1);
INSERT INTO YT_Music (song_name,song_type,duration,song_language,release_year,singer_id,album_id)
    VALUES ('Lost On You','Album','00:04:27','English','2016',2,2);
INSERT INTO YT_Music (song_name,song_type,duration,song_language,release_year,singer_id,album_id)
    VALUES ('Let Me Down Slowly','Album','00:02:50','English','2018',3,3);
INSERT INTO YT_Music (song_name,song_type,duration,song_language,release_year,singer_id,album_id)
    VALUES ('Supermassive Black Hole','Album','00:03:35','English','2006',4,4);
INSERT INTO YT_Music (song_name,song_type,duration,song_language,release_year,singer_id,album_id)
    VALUES ('Blood//Water','Single','00:03:36','English','2018',5,5);
INSERT INTO YT_Music (song_name,song_type,duration,song_language,release_year,singer_id,album_id)
    VALUES ('Civilian','Album','00:03:40','English','2011',6,6);
INSERT INTO YT_Music (song_name,song_type,duration,song_language,release_year,singer_id,album_id)
    VALUES ('Dernière Danse','Album','00:03:34','French','2014',7,7);
INSERT INTO YT_Music (song_name,song_type,duration,song_language,release_year,singer_id,album_id)
    VALUES ('The Labyrinth Song','Album','00:04:12','English','2014',8,8);
INSERT INTO YT_Music (song_name,song_type,duration,song_language,release_year,singer_id,album_id)
    VALUES ('Immortal','Single','00:03:23','English','2017',9,9);
INSERT INTO YT_Music (song_name,song_type,duration,song_language,release_year,singer_id,album_id)
    VALUES ('Runaway','Album','00:04:09','English','2016',10,10);

-- Channle-User ------------------
SET FOREIGN_KEY_CHECKS = 0;
INSERT INTO channel_user (channel_id,user_id)
	VALUES (1,3);
INSERT INTO channel_user (channel_id,user_id)
	VALUES (8,2);
INSERT INTO channel_user (channel_id,user_id)
	VALUES (3,4);
INSERT INTO channel_user (channel_id,user_id)
	VALUES (1,5);
INSERT INTO channel_user (channel_id,user_id)
	VALUES (6,2);
INSERT INTO channel_user (channel_id,user_id)
	VALUES (9,1);
INSERT INTO channel_user (channel_id,user_id)
	VALUES (2,10);
INSERT INTO channel_user (channel_id,user_id)
	VALUES (3,7);
INSERT INTO channel_user (channel_id,user_id)
	VALUES (10,8);
INSERT INTO channel_user (channel_id,user_id)
	VALUES (5,10);
INSERT INTO channel_user (channel_id,user_id)
	VALUES (4,9);
INSERT INTO channel_user (channel_id,user_id)
	VALUES (7,6);
INSERT INTO channel_user (channel_id,user_id)
	VALUES (8,4);

-- User-Video ------------------
SET FOREIGN_KEY_CHECKS = 0;
INSERT INTO user_video (user_id,video_id)
	VALUES (3,6);
INSERT INTO user_video (user_id,video_id)
	VALUES (7,2);
INSERT INTO user_video (user_id,video_id)
	VALUES (1,4);
INSERT INTO user_video (user_id,video_id)
	VALUES (5,9);
INSERT INTO user_video (user_id,video_id)
	VALUES (10,3);
INSERT INTO user_video (user_id,video_id)
	VALUES (4,8);
INSERT INTO user_video (user_id,video_id)
	VALUES (1,5);
INSERT INTO user_video (user_id,video_id)
	VALUES (6,1);
INSERT INTO user_video (user_id,video_id)
	VALUES (2,9);
INSERT INTO user_video (user_id,video_id)
	VALUES (1,10);
INSERT INTO user_video (user_id,video_id)
	VALUES (4,7);
INSERT INTO user_video (user_id,video_id)
	VALUES (5,3);

-- User-Music ------------------
SET FOREIGN_KEY_CHECKS = 0;
INSERT INTO user_music (user_id,song_id)
	VALUES (4,7);
INSERT INTO user_music (user_id,song_id)
	VALUES (2,1);
INSERT INTO user_music (user_id,song_id)
	VALUES (9,5);
INSERT INTO user_music (user_id,song_id)
	VALUES (1,6);
INSERT INTO user_music (user_id,song_id)
	VALUES (8,3);
INSERT INTO user_music (user_id,song_id)
	VALUES (5,10);
INSERT INTO user_music (user_id,song_id)
	VALUES (2,7);
INSERT INTO user_music (user_id,song_id)
	VALUES (10,1);
INSERT INTO user_music (user_id,song_id)
	VALUES (3,2);
INSERT INTO user_music (user_id,song_id)
	VALUES (6,5);
INSERT INTO user_music (user_id,song_id)
	VALUES (7,4);
INSERT INTO user_music (user_id,song_id)
	VALUES (9,1);


-- SQL EXAMPLES ---------------------------------------

select channel_name
from YT_Channel;

select video_id,num_of_like as 'total like of video'
from YT_Video;

select distinct album_name
from YT_Album
where num_of_song > 10;

select distinct singer_name
from YT_Singer
where num_of_album = 1;

select *
from YT_User
where username LIKE 'B%';

select duration_of_video
from YT_Video
where num_of_dislike < 500;

select username
from YT_User
where num_of_download = 5 and subscription_type = 'Premium';

select video_name, publication_date
from YT_Video
where num_of_like > 2000 or num_of_comment < 1000;

select channel_id,channel_name
from YT_Channel
where num_of_subscriber between 10000000 and 50000000;

select song_name
from YT_Music
where release_year between 2000 and 2015;

select *
from YT_Video
order by num_of_comment asc;

select channel_name,num_of_subscriber
from YT_Channel
order by channel_name desc;

select avg(num_of_download), subscription_type
from YT_User
group by subscription_type;

select location, avg(num_of_video)
from YT_Channel
where num_of_view > 1000000000
group by location; 

-- TRIGGERS -----------------------------------------

CREATE TRIGGER trigger1 
BEFORE INSERT ON YT_Channel
FOR EACH ROW
SET NEW.channel_name = UPPER(NEW.channel_name);

CREATE TRIGGER trigger2 
BEFORE UPDATE ON YT_Channel
FOR EACH ROW
SET NEW.channel_name = LOWER(NEW.channel_name);

INSERT INTO YT_Channel (channel_name,num_of_subscriber,num_of_view,num_of_video,location,date_of_join)
	VALUES ('Architectural Digest',4060000,683102584,409,'United States','2006-09-20');

SET SQL_SAFE_UPDATES = 0;
UPDATE YT_Channel SET num_of_video = 4275 
WHERE channel_id = 4;

-- CONSTRAINTS -----------------------------------------------

-- attribute-based
ALTER TABLE YT_Album
ADD CONSTRAINT check_year CHECK (release_year <= 2021);

ALTER TABLE YT_Video
ADD CONSTRAINT check_date CHECK (publication_date >= '2005-02-14');

ALTER TABLE YT_Channel
ADD CONSTRAINT check_join CHECK (date_of_join >= '2005-02-14');

INSERT INTO YT_Album (album_name,num_of_song,duration_of_album,release_year,album_type)
 	VALUES ('Fire',11,'01:02:00',2025,'EP');

INSERT INTO YT_VIDEO (video_name,duration_of_video,num_of_view, publication_date,num_of_like,num_of_dislike,num_of_comment,channel_id)
	VALUES ('The Mystery of Queen Nefertiti','00:02:11',344063,'2000-08-23',6700,178,406,1);

INSERT INTO YT_Channel (channel_name,num_of_subscriber,num_of_view,num_of_video,location,date_of_join)
	VALUES ('Architectural Digest',4060000,683102584,409,'United States','2002-09-20');

-- tuple-based
ALTER TABLE YT_User
ADD CONSTRAINT check_subs_type CHECK (subscription_type = 'Free' or subscription_type = 'Premium');

ALTER TABLE YT_Album
ADD CONSTRAINT check_alb_type CHECK ((duration_of_album > '00:28:00' and album_type = 'LP') or
									(duration_of_album <= '00:28:00' and album_type = 'EP'));

ALTER TABLE YT_Album
ADD CONSTRAINT check_alb CHECK ((num_of_song > 4 and album_type = 'LP') or
								(num_of_song <= 7 and album_type = 'EP'));

ALTER TABLE YT_Video
ADD CONSTRAINT check_total CHECK (num_of_like + num_of_dislike <= num_of_view);

INSERT INTO YT_USER (username,num_of_download,num_of_list, subscription_type,total_subscription,num_of_liked_video)
    VALUES ('Kemal Yıldız',2,5,'Normal',123,1073);
    
INSERT INTO YT_Album (album_name,num_of_song,duration_of_album,release_year,album_type)
	VALUES ('Leftoverture',3,'00:20:00',1976,'LP');

INSERT INTO YT_Album (album_name,num_of_song,duration_of_album,release_year,album_type)
	VALUES ('Leftoverture',5,'00:20:00',1976,'LP');

-- complex
ALTER TABLE YT_Video
ADD CONSTRAINT check_view CHECK (((SELECT channel_id FROM YT_Video) = (SELECT channel_id FROM YT_Channel)) and 
								((SELECT num_of_view FROM YT_Video) < (SELECT num_of_view FROM YT_Channel)));

ALTER TABLE YT_Music
ADD CONSTRAINT check_tot_song CHECK ((SELECT COUNT(song_id) FROM YT_Music WHERE song_type = 'Album') > (SELECT COUNT(album_id) FROM YT_album));

INSERT INTO YT_VIDEO (video_name,duration_of_video,num_of_view, publication_date,num_of_like,num_of_dislike,num_of_comment,channel_id)
 	VALUES ('Trust in Physics','00:02:09',20817787,'2020-04-16',68400000,7800,23000,12);
 
INSERT INTO YT_VIDEO (video_name,duration_of_video,num_of_view, publication_date,num_of_like,num_of_dislike,num_of_comment,channel_id)
 	VALUES ('The Legacy','00:05:01',1964524900,'2020-03-23',6567500,6500,12000,7);
    
-- ASSERTIONS -----------------------------------------------

CREATE ASSERTION Year_Check CHECK (
	NOT EXISTS (
	SELECT * FROM YT_Channel, YT_Video
	WHERE YT_Channel.channel_id = YT_Video.channel_id
		AND YT_Video.publication_date > YT_Channel.date_of_join
));

CREATE ASSERTION Year_Check CHECK (
	NOT EXISTS (
	SELECT * FROM YT_Channel, YT_Video
	WHERE YT_Video.publication_date < '2005-02-14'
		AND YT_Channel.date_of_join < '2005-02-14'
));

SELECT * FROM YT_Channel;
SELECT * FROM YT_User;
SELECT * FROM YT_Video;
SELECT * FROM YT_Singer;
SELECT * FROM YT_Album;
SELECT * FROM YT_Music;
SELECT * FROM channel_user;
SELECT * FROM user_video;
SELECT * FROM user_music;
