CREATE TABLE `actissible_db`.`users`
      ( `user_id` INT NOT NULL ,
        `name` VARCHAR(50) NULL ,
        `email` VARCHAR(50) NULL ,
        `password` VARCHAR(16) NULL ,
        `postal_town` INT NULL ,
        PRIMARY KEY (`user_id`))
      ENGINE = InnoDB;
