CREATE DATABASE movieProject;

USE movieProject;

-- ========================= 영화 테이블 생성 & 샘플 데이터 넣기 ========================
CREATE TABLE movie (
    id INT AUTO_INCREMENT PRIMARY KEY,
    movieName VARCHAR(255),
    movieCode VARCHAR(255),
    movieProducer VARCHAR(255),
    movieGenre  VARCHAR(255),
    movieRunningTime INT,
    movieAge INT,
    movieDescription TEXT,
    movieImage TEXT,
    movieYear INT,
    movieShowing INT
);

INSERT INTO movie (
	movieName,
    movieCode,
    movieProducer,
    movieGenre,
    movieRunningTime,
    movieAge,
    movieDescription,
    movieImage,
    movieYear,
    movieShowing
) VALUES (
'아이언맨3',
'M001A',
'Shane Black',
'액션',
120,
15,
'<어벤져스> 뉴욕 사건의 트라우마로 인해 영웅으로서의 삶에 회의를 느끼는 토니 스타크(로버트 다우니 주니어). 그가 혼란을 겪는 사이 최악의 테러리스트 만다린(벤 킹슬리)을 내세운 익스트리미스 집단 AIM이 스타크 저택에 공격을 퍼붓는다. 이 공격으로 그에게 남은 건 망가진 수트 한벌 뿐. 모든 것을 잃어버린 그는 다시 테러의 위험으로부터 세계와 사랑하는 여인(기네스 팰트로)를 지켜내야 하는 동시에 머릿속을 떠나지 않던 한가지 물음의 해답도 찾아야만 한다. 과연 그가 아이언맨인가? 수트가 아이언맨인가?',
'https://i.namu.wiki/i/tZEe_ObVSwRaaJ_JrcB0Dgjhj9VX0EcpREAbFWK4NOvQDCP5jMZ2w5aBLYu-Z-HyevzOL_SphixmfL_4oTQ9lJL7r5Hji7kKW4QnbH1eKi_Qh1jWu96T2Qx5s9mQ8bcyk-8HpsOR0WsTOYoI3OQYxA.webp',
2023,
1
);

INSERT INTO movie (
	movieName,
    movieCode,
    movieProducer,
    movieGenre,
    movieRunningTime,
    movieAge,
    movieDescription,
    movieImage,
    movieYear,
    movieShowing
) VALUES (
'파묘',
'M002A',
'장재현',
'미스터리',
134,
15,
'미국 LA, 거액의 의뢰를 받은 무당 ‘화림’(김고은)과 ‘봉길’(이도현)은 기이한 병이 대물림되는 집안의 장손을 만난다. 조상의 묫자리가 화근임을 알아챈 ‘화림’은 이장을 권하고, 돈 냄새를 맡은 최고의 풍수사 ‘상덕’(최민식)과 장의사 ‘영근’(유해진)이 합류한다. “전부 잘 알 거야… 묘 하나 잘못 건들면 어떻게 되는지” 절대 사람이 묻힐 수 없는 악지에 자리한 기이한 묘. ‘상덕’은 불길한 기운을 느끼고 제안을 거절하지만, ‘화림’의 설득으로 결국 파묘가 시작되고… 나와서는 안될 것이 나왔다.',
'https://search.pstatic.net/common?quality=75&direct=true&src=https%3A%2F%2Fmovie-phinf.pstatic.net%2F20240222_175%2F1708609058134r4oaq_JPEG%2Fmovie_image.jpg',
2024,
1
);

INSERT INTO movie (
	movieName,
    movieCode,
    movieProducer,
    movieGenre,
    movieRunningTime,
    movieAge,
    movieDescription,
    movieImage,
    movieYear,
    movieShowing
) VALUES (
'범죄도시3',
'M003A',
'이상용',
'액션',
105,
15,
'대체불가 괴물형사 마석도, 서울 광수대로 발탁! 베트남 납치 살해범 검거 후 7년 뒤, 마석도(마동석)는 새로운 팀원들과 함께 살인사건을 조사한다. 사건 조사 중, 마석도는 신종 마약 사건이 연루되었음을 알게 되고 수사를 확대한다. 한편, 마약 사건의 배후인 주성철(이준혁)은 계속해서 판을 키워가고 약을 유통하던 일본 조직과 리키(아오키 무네타카)까지 한국에 들어오며 사건의 규모는 점점 더 커져가는데... 나쁜 놈들 잡는 데 이유 없고 제한 없다. 커진 판도 시원하게 싹 쓸어버린다!',
'https://search.pstatic.net/common?quality=75&direct=true&src=https%3A%2F%2Fmovie-phinf.pstatic.net%2F20230508_234%2F1683510751767I8t1j_JPEG%2Fmovie_image.jpg',
2023,
1
);


-- ========================= 회원 테이블 생성 & 샘플 데이터 넣기 =========================
CREATE TABLE user (
    id INT AUTO_INCREMENT PRIMARY KEY,
    userName VARCHAR(255),
    userBirth date,
    userPhone VARCHAR(255),
    userId VARCHAR(255),
    userPassword VARCHAR(255),
    userPoint INT
);

INSERT INTO user (
    userName, 
    userBirth, 
    userPhone, 
    userId, 
    userPassword, 
    userPoint
) VALUES (
    '홍길동', 
    '1990-01-01', 
    '010-1234-5678', 
    'gildong123', 
    'gildong123', 
    1000
);


-- ========================= 예약현황 테이블 생성 & 샘플 데이터 넣기 =========================
CREATE TABLE reservation (
    id INT AUTO_INCREMENT PRIMARY KEY,
    ReservationDate datetime,
    userId INT,  -- user 테이블의 id 컬럼을 참조
    movieId INT,  -- movie 테이블의 id 컬럼을 참조
    ReservationPerson INT,
    ReservationSeat VARCHAR(255),
    ReservationState INT,
    FOREIGN KEY (userId) REFERENCES user(id),
    FOREIGN KEY (movieId) REFERENCES movie(id)
);

INSERT INTO reservation (
    ReservationDate, 
    userId, 
    movieId, 
    ReservationPerson, 
    ReservationSeat, 
    ReservationState
) VALUES (
    '2024-03-27 20:00:00',  -- 예약 날짜 및 시간
    1,                       -- 사용자 ID
    1,                       -- 영화 ID
    1,                       -- 예약 인원
    'A1',                -- 예약 좌석
    1                        -- 예약 상태 (1: 예약 확정, 0: 예약 취소)
);

INSERT INTO reservation (
    ReservationDate, 
    userId, 
    movieId, 
    ReservationPerson, 
    ReservationSeat, 
    ReservationState
) VALUES (
    '2024-03-27 20:00:00',  -- 예약 날짜 및 시간
    1,                       -- 사용자 ID
    1,                       -- 영화 ID
    1,                       -- 예약 인원
    'A2',                -- 예약 좌석
    1                        -- 예약 상태 (1: 예약 확정, 0: 예약 취소)
);
