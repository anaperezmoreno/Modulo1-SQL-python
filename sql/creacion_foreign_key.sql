CONSTRAINT `fk_stats_teams` 
		FOREIGN KEY (`team_id`) 
		REFERENCES teams (`team_id`) 
        ON DELETE CASCADE ON UPDATE CASCADE,
	CONSTRAINT `fk_stats_season` 
		FOREIGN KEY (`season_id`) 
		REFERENCES season (`season_id`) 
        ON DELETE CASCADE ON UPDATE CASCADE