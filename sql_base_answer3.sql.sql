-- Q22

SELECT *
FROM players
ORDER BY height DESC, weight DESC;

-- Q23

SELECT 
    id,
    country_id,
    uniform_num,
    SUBSTRING(position, 1, 1) AS pos_initial,
    name
FROM players;


-- Q24

SELECT 
    name,
    LENGTH(name) AS name_length
FROM countries
ORDER BY name_length DESC;

-- Q25

SELECT 
    name,
    DATE_FORMAT(birthday, '%Y年%m月%d日') AS birthday_formatted
FROM players;

-- Q26

SELECT 
    IFNULL(player_id, 9999) AS player_id,
    goal_time
FROM goals;


-- Q27

SELECT 
    CASE 
        WHEN player_id IS NULL THEN 9999
        ELSE player_id
    END AS player_id,
    goal_time
FROM goals;

-- Q28

SELECT 
    AVG(height) AS 平均身長,
    AVG(weight) AS 平均体重
FROM players;

-- Q29

SELECT 
    COUNT(*) AS 日本のゴール数
FROM goals
WHERE player_id IN (714, 736);

-- Q30

SELECT 
    COUNT(CASE WHEN player_id IS NOT NULL THEN 1 END) AS オウンゴール以外のゴール数
FROM goals;

-- Q31

SELECT 
    MAX(height) AS 最大身長,
    MAX(weight) AS 最大体重
FROM players;
