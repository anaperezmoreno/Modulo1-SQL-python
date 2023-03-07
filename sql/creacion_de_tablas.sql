CREATE SCHEMA sport_analytics;

USE sport_analytics;

CREATE TABLE season (
season_id BIGINT NOT NULL, 
season VARCHAR(45),
PRIMARY KEY (season_id)
);

CREATE TABLE teams(
team_id BIGINT NOT NULL,
 team VARCHAR (45),
 PRIMARY KEY (team_id)
);

CREATE TABLE stats (
id_stat_team_season BIGINT NOT NULL, 
team_id BIGINT, 
season_id BIGINT, 
gp INT, 
w INT, 
l INT, 
win_percent FLOAT, 
minutes FLOAT, 
pts FLOAT, 
fgm FLOAT, 
fga FLOAT, 
fg_percent FLOAT, 
three_pm FLOAT,
three_pa FLOAT,
three_point_percent FLOAT,
ftm FLOAT,
fta FLOAT,
ft_percent FLOAT,
oreb FLOAT,
dreb FLOAT,
reb FLOAT,
ast FLOAT,
tov FLOAT,
stl FLOAT,
blk FLOAT,
blka FLOAT,
pf FLOAT,
pfd FLOAT,
plus_minus FLOAT,
PRIMARY KEY (id_stat_team_season),
CONSTRAINT `fk_stats_teams` 
		FOREIGN KEY (`team_id`) 
		REFERENCES teams (`team_id`) 
        ON DELETE CASCADE ON UPDATE CASCADE,
	CONSTRAINT `fk_stats_season` 
		FOREIGN KEY (`season_id`) 
		REFERENCES season (`season_id`) 
        ON DELETE CASCADE ON UPDATE CASCADE
);