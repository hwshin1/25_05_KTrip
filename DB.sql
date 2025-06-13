DROP DATABASE IF EXISTS KLEAGUE;
CREATE DATABASE KLEAGUE;
USE KLEAGUE;

DROP TABLE IF EXISTS `user`;
CREATE TABLE `user` (
                        id INT UNSIGNED NOT NULL PRIMARY KEY AUTO_INCREMENT,
                        loginId VARCHAR(30) NOT NULL,
                        loginPw VARCHAR(30) NOT NULL,
                        `name` VARCHAR(30) NOT NULL,
                        nickName VARCHAR(30) NOT NULL,
                        email VARCHAR(50) NOT NULL,
                        regDate DATETIME NOT NULL,
                        updateDate DATETIME NOT NULL,
                        login_type ENUM ('normal','kakao')
);

SELECT * FROM `user`
ORDER BY id DESC;

INSERT INTO `user`
SET regDate = NOW(),
updateDate = NOW(),
loginId = 'test1',
loginPw = 'test1',
`name` = 'test1',
nickName = 'test1_nick',
email = 'test1@naver.com',
login_type = 'normal';

INSERT INTO `user`
SET regDate = NOW(),
updateDate = NOW(),
loginId = 'test2',
loginPw = 'test2',
`name` = 'test2',
nickName = 'test2_nick',
email = 'test2@naver.com',
login_type = 'normal';

INSERT INTO `user`
SET regDate = NOW(),
updateDate = NOW(),
loginId = 'test3',
loginPw = 'test3',
`name` = 'test3',
nickName = 'test3_nick',
email = 'test3@gmail.com',
login_type = 'normal';

SELECT * FROM `user`
WHERE loginId = 'test1';

SELECT * FROM `user`
WHERE `name` = 'test2' AND email='test2@naver.com';


DROP TABLE IF EXISTS team;
CREATE TABLE team (
                      id INT UNSIGNED NOT NULL PRIMARY KEY AUTO_INCREMENT,
                      team_logo TEXT NOT NULL,
                      team_name VARCHAR(30),
                      team_location TEXT NOT NULL
);

SELECT * FROM team;
SELECT LAST_INSERT_ID();

SELECT * FROM team
WHERE id = 1;

DROP TABLE IF EXISTS review;
CREATE TABLE review (
                        id INT UNSIGNED NOT NULL PRIMARY KEY AUTO_INCREMENT,
                        regDate DATETIME NOT NULL,
                        updateDate DATETIME NOT NULL,
                        title VARCHAR(30) NOT NULL,
                        `body` TEXT NOT NULL,
                        `point` TINYINT NOT NULL DEFAULT 0,
                        rating FLOAT DEFAULT 0
);

SELECT * FROM review
ORDER BY id DESC;

INSERT INTO review
SET regDate = NOW(),
updateDate = NOW(),
title = 'test1',
`body` = 'content1';

INSERT INTO review
SET regDate = NOW(),
updateDate = NOW(),
title = 'test2',
`body` = 'content2';

INSERT INTO review
SET regDate = NOW(),
updateDate = NOW(),
title = 'test3',
`body` = 'content3';

INSERT INTO review
SET regDate = NOW(),
updateDate = NOW(),
title = 'test4',
`body` = 'content4';

INSERT INTO review
SET regDate = NOW(),
updateDate = NOW(),
title = 'test5',
`body` = 'content5';

INSERT INTO review
SET regDate = NOW(),
updateDate = NOW(),
title = 'test6',
`body` = 'content6';

SELECT * FROM review
WHERE id = 2;

SELECT LAST_INSERT_ID();

UPDATE review
SET updateDate = NOW(),
    title = 's1s',
    `body` = 'dd1'
WHERE id = 1;

DELETE FROM review
WHERE id = 1;

ALTER TABLE review ADD COLUMN userId INT NOT NULL AFTER updateDate;

SELECT * FROM review;

DROP TABLE IF EXISTS kakao;
CREATE TABLE kakao(
                      kakao_id INT UNSIGNED NOT NULL,
                      kakao_email VARCHAR(50) NOT NULL,
                      kakao_nickName VARCHAR(30) NOT NULL,
                      kakao_createAt DATETIME NOT NULL,
                      access_token TEXT NOT NULL,
                      refresh_token TEXT NOT NULL
);

SELECT * FROM kakao;