DROP
DATABASE IF EXISTS KLEAGUE;
CREATE
DATABASE KLEAGUE;
USE
KLEAGUE;

# 유저 테이블 생성
DROP TABLE IF EXISTS `user`;
CREATE TABLE `user`
(
    id          INT UNSIGNED NOT NULL PRIMARY KEY AUTO_INCREMENT,
    loginId     VARCHAR(30) NOT NULL,
    loginPw     VARCHAR(30) NOT NULL,
    `authLevel` SMALLINT(2) UNSIGNED DEFAULT 3 COMMENT '권한 레벨 (3=일반,7=관리자)',
    `name`      VARCHAR(30) NOT NULL,
    nickName    VARCHAR(30) NOT NULL,
    email       VARCHAR(50) NOT NULL,
    regDate     DATETIME    NOT NULL,
    updateDate  DATETIME    NOT NULL,
    login_type  ENUM ('normal','kakao'),
    teamId INT
);

SELECT *
FROM `user`
ORDER BY id DESC;

INSERT INTO `user`
SET regDate = NOW(),
updateDate = NOW(),
loginId = 'admin',
loginPw = 'admin',
`authLevel` = 7,
`name` = 'admin',
nickName = 'admin',
email = 'admin@naver.com',
login_type = 'normal';

INSERT INTO `user`
SET regDate = NOW(),
updateDate = NOW(),
loginId = 'test1',
loginPw = 'test1',
`authLevel` = 3,
`name` = 'test1',
nickName = 'test1',
email = 'test1@gmail.com',
login_type = 'normal';

INSERT INTO `user`
SET regDate = NOW(),
updateDate = NOW(),
loginId = 'test2',
loginPw = 'test2',
`authLevel` = 3,
`name` = 'test2',
nickName = 'test2',
email = 'test2@gmail.com',
login_type = 'normal',
teamId = 2;

SELECT *
FROM `user`
WHERE loginId = 'test2';

SELECT *
FROM `user`
WHERE `name` = 'test2'
AND email = 'test2@gmail.com';

SELECT *
FROM `user`
ORDER BY id DESC;

# 팀(구단) 테이블 생성
DROP TABLE IF EXISTS team;
CREATE TABLE team
(
    id            INT UNSIGNED NOT NULL PRIMARY KEY AUTO_INCREMENT,
    team_logo     TEXT NOT NULL,
    team_name     VARCHAR(30),
    team_location TEXT NOT NULL
);

SELECT *
FROM team;

SELECT *
FROM team
WHERE id = 1;

SELECT U.*, T.team_name AS extra_teamName,
       T.team_logo AS extra_teamLogo
FROM `user` AS U
         LEFT JOIN team AS T
                   ON U.teamId = T.id
WHERE U.id= 3;

# 리뷰 테이블 생성
DROP TABLE IF EXISTS review;
CREATE TABLE review
(
    id         INT UNSIGNED NOT NULL PRIMARY KEY AUTO_INCREMENT,
    regDate    DATETIME    NOT NULL,
    updateDate DATETIME    NOT NULL,
    userId     INT         NOT NULL,
    boardId    INT         NOT NULL,
    title      VARCHAR(30) NOT NULL,
    `body`     TEXT        NOT NULL,
    `point`    TINYINT     NOT NULL DEFAULT 0,
    rating     FLOAT                DEFAULT 0
);

INSERT INTO review
SET regDate = NOW(),
updateDate = NOW(),
userId = 1,
boardId = 2,
title = 'test',
`body` = 'test';

INSERT INTO review
SET regDate = NOW(),
updateDate = NOW(),
userId = 2,
boardId = 2,
title = 'ss',
`body` = 'ss';

INSERT INTO review
SET regDate = NOW(),
updateDate = NOW(),
userId = 2,
boardId = 2,
title = 'aa',
`body` = 'aa';

SELECT *
FROM review
ORDER BY id DESC;

SELECT LAST_INSERT_ID();

SELECT *
FROM review
ORDER BY id DESC;

SELECT R.*, U.nickName AS extra_write
FROM review AS R
         INNER JOIN `user` AS U
                    ON R.userId = U.id
WHERE R.id = 2;

# 카카오 테이블 생성
DROP TABLE IF EXISTS kakao;
CREATE TABLE kakao
(
    kakao_id       INT UNSIGNED NOT NULL,
    kakao_email    VARCHAR(50) NOT NULL,
    kakao_nickName VARCHAR(30) NOT NULL,
    kakao_createAt DATETIME    NOT NULL,
    access_token   TEXT        NOT NULL,
    refresh_token  TEXT        NOT NULL
);

SELECT *
FROM kakao;

# 게시판 테이블 생성
DROP TABLE IF EXISTS board;
CREATE TABLE board
(
    id         INT UNSIGNED NOT NULL PRIMARY KEY AUTO_INCREMENT,
    regDate    DATETIME    NOT NULL,
    updateDate DATETIME    NOT NULL,
    `code`     VARCHAR(50) NOT NULL UNIQUE,
    `name`     VARCHAR(50) NOT NULL UNIQUE,
    delStatus  TINYINT(1) UNSIGNED NOT NULL DEFAULT 0 COMMENT '삭제 여부(0=삭제 전, 1=삭제 후)',
    delDate    DATETIME COMMENT '삭제날짜'
);

INSERT INTO board
SET regDate = NOW(),
updateDate = NOW(),
`code` = 'NOTICE',
`name` = '공지사항';

INSERT INTO board
SET regDate = NOW(),
updateDate = NOW(),
`code` = 'REVIEW',
`name` = '후기';

INSERT INTO board
SET regDate = NOW(),
updateDate = NOW(),
`code` = 'QnA',
`name` = '질의응답';

SELECT *
FROM board;

# reactionPoint 테이블 생성
DROP TABLE IF EXISTS reactionPoint;
CREATE TABLE reactionPoint
(
    id          INT(10) UNSIGNED NOT NULL PRIMARY KEY AUTO_INCREMENT,
    regDate     DATETIME NOT NULL,
    updateDate  DATETIME NOT NULL,
    userId      INT(10) UNSIGNED NOT NULL,
    relTypeCode CHAR(50) NOT NULL COMMENT '관련 데이터 타입 코드',
    relId       INT(10) NOT NULL COMMENT '관련 데이터 번호',
    `point`     INT(10) NOT NULL
);

# reactionPoint 테스트 데이터 생성
# 1번 회원이 1번 글에 좋아요
INSERT INTO reactionPoint
SET regDate = NOW(),
updateDate = NOW(),
userId = 1,
relTypeCode = 'review',
relId = 1,
`point` = 1;

# 1번 회원이 2번 글에 좋아요
INSERT INTO reactionPoint
SET regDate = NOW(),
updateDate = NOW(),
userId = 1,
relTypeCode = 'review',
relId = 2,
`point` = 1;

# 2번 회원이 2번 글에 좋아요
INSERT INTO reactionPoint
SET regDate = NOW(),
updateDate = NOW(),
userId = 2,
relTypeCode = 'review',
relId = 2,
`point` = 1;

# 1번 회원이 3번 글에 좋아요
INSERT INTO reactionPoint
SET regDate = NOW(),
updateDate = NOW(),
userId = 1,
relTypeCode = 'review',
relId = 3,
`point` = 1;

# 2번 회원이 3번 글에 좋아요
INSERT INTO reactionPoint
SET regDate = NOW(),
updateDate = NOW(),
userId = 2,
relTypeCode = 'review',
relId = 3,
`point` = 1;

SELECT *
FROM reactionPoint;

# 게시글에 좋아요 업데이트
UPDATE review AS R
    INNER JOIN (
    SELECT RP.relTypeCode, RP.relId,
    SUM(IF(RP.`point` > 0, RP.`point`, 0)) AS `point`
    FROM reactionPoint AS RP
    GROUP BY RP.relTypeCode, RP.relId
    ) AS RP_SUM
ON R.id = RP_SUM.relId
SET R.`point` = RP_SUM.`point`;

SELECT *
FROM review;