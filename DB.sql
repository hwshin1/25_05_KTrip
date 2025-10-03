DROP
DATABASE IF EXISTS KLEAGUE;
CREATE
DATABASE KLEAGUE;
USE
KLEAGUE;

# 유저 테이블 생성
DROP TABLE IF EXISTS `member`;
CREATE TABLE `member`
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
FROM `member`
ORDER BY id DESC;

INSERT INTO `member`
SET regDate = NOW(),
updateDate = NOW(),
loginId = 'admin',
loginPw = 'admin',
`authLevel` = 7,
`name` = 'admin',
nickName = 'admin',
email = 'admin@naver.com',
login_type = 'normal';

INSERT INTO `member`
SET regDate = NOW(),
updateDate = NOW(),
loginId = 'test1',
loginPw = 'test1',
`authLevel` = 3,
`name` = '전진우',
nickName = '포옛바라기',
email = 'Jeon@gmail.com',
login_type = 'normal',
teamId = 1;

INSERT INTO `member`
SET regDate = NOW(),
updateDate = NOW(),
loginId = 'test2',
loginPw = 'test2',
`authLevel` = 3,
`name` = '이창근',
nickName = '신들린선방',
email = 'Lee@gmail.com',
login_type = 'normal',
teamId = 2;

INSERT INTO `member`
SET regDate = NOW(),
updateDate = NOW(),
loginId = 'test3',
loginPw = 'test3',
`authLevel` = 3,
`name` = '이동경',
nickName = '아군대언제끝나',
email = 'leedong@gmail.com',
login_type = 'normal',
teamId = 3;

INSERT INTO `member`
SET regDate = NOW(),
updateDate = NOW(),
loginId = 'test4',
loginPw = 'test4',
`authLevel` = 3,
`name` = '김판곤',
nickName = '우리는왕이야',
email = 'Pangon@gmail.com',
login_type = 'normal',
teamId = 4;

INSERT INTO `member`
SET regDate = NOW(),
updateDate = NOW(),
loginId = 'test5',
loginPw = 'test5',
`authLevel` = 3,
`name` = '조르지',
nickName = '골대좀그만맞춰',
email = 'Jo@gmail.com',
login_type = 'normal',
teamId = 5;

INSERT INTO `member`
SET regDate = NOW(),
updateDate = NOW(),
loginId = 'test6',
loginPw = 'test6',
`authLevel` = 3,
`name` = '조빈',
nickName = '이정효의축구교실',
email = 'jobin@gmail.com',
login_type = 'normal',
teamId = 6;

INSERT INTO `member`
SET regDate = NOW(),
updateDate = NOW(),
loginId = 'test7',
loginPw = 'test7',
`authLevel` = 3,
`name` = '린가드',
nickName = '재간둥이',
email = 'LeanGard@gmail.com',
login_type = 'normal',
teamId = 7;

INSERT INTO `member`
SET regDate = NOW(),
updateDate = NOW(),
loginId = 'test8',
loginPw = 'test8',
`authLevel` = 3,
`name` = '채현우',
nickName = '승격팀',
email = 'cha@gmail.com',
login_type = 'normal',
teamId = 8;

INSERT INTO `member`
SET regDate = NOW(),
updateDate = NOW(),
loginId = 'test9',
loginPw = 'test9',
`authLevel` = 3,
`name` = '김준하',
nickName = '유럽가고파',
email = 'junha@gmail.com',
login_type = 'normal',
teamId = 9;

INSERT INTO `member`
SET regDate = NOW(),
updateDate = NOW(),
loginId = 'test10',
loginPw = 'test10',
`authLevel` = 3,
`name` = '이광연',
nickName = '골킵',
email = 'gwang@gmail.com',
login_type = 'normal',
teamId = 10;

INSERT INTO `member`
SET regDate = NOW(),
updateDate = NOW(),
loginId = 'test11',
loginPw = 'test11',
`authLevel` = 3,
`name` = '김은중',
nickName = '감독님홧팅',
email = 'jung@gmail.com',
login_type = 'normal',
teamId = 11;

INSERT INTO `member`
SET regDate = NOW(),
updateDate = NOW(),
loginId = 'test12',
loginPw = 'test12',
`authLevel` = 3,
`name` = '세징야',
nickName = '동상세워야함',
email = 'se@gmail.com',
login_type = 'normal',
teamId = 12;

SELECT *
FROM `member`
WHERE loginId = 'test2';

SELECT *
FROM `member`
WHERE `name` = 'test2'
  AND email = 'test2@gmail.com';

SELECT *
FROM `member`
ORDER BY id DESC;

# 팀(구단) 테이블 생성
DROP TABLE IF EXISTS team;
CREATE TABLE team
(
    id            INT UNSIGNED NOT NULL PRIMARY KEY AUTO_INCREMENT,
    team_logo     TEXT NOT NULL,
    team_name     VARCHAR(30),
    team_homepage TEXT NOT NULL
);

SELECT *
FROM team;

SELECT *
FROM team
WHERE id = 1;

SELECT EXISTS (
SELECT 1
FROM team
WHERE team_name = '대전'
OR team_homepage = 'https://www.dhcfc.kr/'
);

SELECT U.*, T.team_name AS extra_teamName,
T.team_logo AS extra_teamLogo
FROM `member` AS U
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
INNER JOIN `member` AS U
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