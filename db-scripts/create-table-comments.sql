CREATE TABLE `actissible_db`.`comments`
  ( `comment_id` INT NOT NULL AUTO_INCREMENT ,
    `email` VARCHAR(50) NOT NULL ,
    `content` TEXT NOT NULL ,
    PRIMARY KEY (`comment_id`),
    FOREIGN KEY (email) REFERENCES users(email)
  )
  ENGINE = InnoDB;
