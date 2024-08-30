-- 프로그래머스 데이터 분석 4기 1차 팀프로젝트(싱가포르 공공임대주택 데이터)
-- https://www.kaggle.com/datasets/lzytim/hdb-resale-prices/data

-- id 중복여부 확인
-- SELECT COUNT(id) AS cnt, count(distinct id) AS unique_cnt 
-- FROM resale_hdb_price

-- 판매연월별 카운트 확인
-- SELECT month, COUNT(month) AS cnt_month
-- FROM resale_hdb_price
-- GROUP BY 1
-- ORDER BY 1

-- 주택 유형별 카운트 확인
-- SELECT flat_type, COUNT(flat_type) AS cnt_type
-- FROM resale_hdb_price
-- GROUP BY 1
-- ORDER BY 2 DESC
-- 
-- 층수범위별 카운트 확인
-- SELECT storey_range, COUNT(storey_range) AS cnt_storey
-- FROM resale_hdb_price
-- GROUP BY 1
-- ORDER BY 1

-- 주택 모델 종류별 카운트 확인
-- SELECT flat_model, COUNT(flat_model) AS cnt_model
-- FROM resale_hdb_price
-- GROUP BY 1
-- ORDER BY 2 DESC

-- 건물 동 번호 종류별 카운트 확인
-- SELECT blk_no, COUNT(blk_no) AS cnt_blk, address
-- FROM resale_hdb_price
-- GROUP BY 1
-- ORDER BY 1

-- 건물 동 번호에 할당된 주소 확인
-- SELECT blk_no, COUNT(blk_no) AS cnt_blk, address
-- FROM resale_hdb_price
-- GROUP BY 1
-- ORDER BY 2
-- LIMIT 30

-- 주소별 카운트(2 이상) 확인(거래량 많은 주택 확인)
-- SELECT address, COUNT(address) AS cnt_address
-- FROM resale_hdb_price
-- GROUP BY 1
-- HAVING cnt_address > 1
-- ORDER BY 2 DESC

-- 연도별 임대개시일 카운트 확인
-- SELECT YEAR(lease_commence_date) AS yr, COUNT(lease_commence_date) AS cnt_lease_comm
-- FROM resale_hdb_price
-- GROUP BY 1
-- ORDER BY 1

-- 계획구역(area)별 카운트 확인
-- SELECT planning_area_ura, COUNT(planning_area_ura) AS cnt_area
-- FROM resale_hdb_price
-- GROUP BY 1
-- ORDER BY 2 DESC

-- 지역(region)별 카운트 확인
-- SELECT region_ura, COUNT(region_ura) AS cnt_region
-- FROM resale_hdb_price
-- GROUP BY 1
-- ORDER BY 2 DESC

-- 최근접 지하철역별 카운트 확인
-- SELECT closest_mrt_station, COUNT(closest_mrt_station) AS cnt_mrt
-- FROM resale_hdb_price
-- GROUP BY 1
-- ORDER BY 2 DESC

-- 전철 유형별 카운트 확인
-- SELECT transport_type, COUNT(transport_type) AS cnt_trspt
-- FROM resale_hdb_price
-- GROUP BY 1
-- ORDER BY 2 DESC

-- 노선 색상별 카운트 확인
-- SELECT line_color, COUNT(line_color) AS cnt_line
-- FROM resale_hdb_price
-- GROUP BY 1
-- ORDER BY 2 DESC

-- 최근접 초등학교별 카운트 확인
-- SELECT closest_pri_school, COUNT(closest_pri_school) AS cnt_school
-- FROM resale_hdb_price
-- GROUP BY 1
-- ORDER BY 2 DESC

-- 연속형 변수 평균, 표준편차, 변동계수(cv), 최소값, 최대값, 범위 확인
SELECT 'floor_area_sqm' as title, AVG(floor_area_sqm) AS avg, STDDEV(floor_area_sqm) AS stdev,
STDDEV(floor_area_sqm) / AVG(floor_area_sqm) as cv, 
MIN(floor_area_sqm) AS min, MAX(floor_area_sqm) AS max, 
(MAX(floor_area_sqm) - MIN(floor_area_sqm)) as rng
FROM resale_hdb_price

UNION

SELECT 'resale_price' as title, AVG(resale_price) AS avg, STDDEV(resale_price) AS stdev, 
STDDEV(resale_price) / AVG(resale_price) as cv,
MIN(resale_price) AS min, MAX(resale_price) AS max, 
(MAX(resale_price) - MIN(resale_price)) as rng
FROM resale_hdb_price

UNION

SELECT 'floor_area_sqft' as title, AVG(floor_area_sqft) AS avg, STDDEV(floor_area_sqft) AS stdev, 
STDDEV(floor_area_sqft) / AVG(floor_area_sqft) as cv,
MIN(floor_area_sqft) AS min, MAX(floor_area_sqft) AS max, 
(MAX(floor_area_sqft) - MIN(floor_area_sqft)) as rng
FROM resale_hdb_price

UNION

SELECT 'price_per_sqft' as title, AVG(price_per_sqft) AS avg, STDDEV(price_per_sqft) AS stdev, 
STDDEV(price_per_sqft) / AVG(price_per_sqft) as cv,
MIN(price_per_sqft) AS min, MAX(price_per_sqft) AS max, 
(MAX(price_per_sqft) - MIN(price_per_sqft)) as rng
FROM resale_hdb_price

UNION

SELECT 'x' as title, AVG(x) AS avg, STDDEV(x) AS stdev, 
STDDEV(x) / AVG(x) as cv,
MIN(x) AS min, MAX(x) AS max, 
(MAX(x) - MIN(x)) as rng
FROM resale_hdb_price

UNION

SELECT 'y' as title, AVG(y) AS avg, STDDEV(y) AS stdev, 
STDDEV(y) / AVG(y) as cv,
MIN(y) AS min, MAX(y) AS max, 
(MAX(y) - MIN(y)) as rng
FROM resale_hdb_price

UNION

SELECT 'latitude' as title, AVG(latitude) AS avg, STDDEV(latitude) AS stdev, 
STDDEV(latitude) / AVG(latitude) as cv,
MIN(latitude) AS min, MAX(latitude) AS max, 
(MAX(latitude) - MIN(latitude)) as rng
FROM resale_hdb_price

UNION

SELECT 'longitude' as title, AVG(longitude) AS avg, STDDEV(longitude) AS stdev, 
STDDEV(longitude) / AVG(longitude) as cv,
MIN(longitude) AS min, MAX(longitude) AS max, 
(MAX(longitude) - MIN(longitude)) as rng
FROM resale_hdb_price

UNION

SELECT 'distance_to_mrt_meters' as title, AVG(distance_to_mrt_meters) AS avg, STDDEV(distance_to_mrt_meters) AS stdev, 
STDDEV(distance_to_mrt_meters) / AVG(distance_to_mrt_meters) as cv,
MIN(distance_to_mrt_meters) AS min, MAX(distance_to_mrt_meters) AS max, 
(MAX(distance_to_mrt_meters) - MIN(distance_to_mrt_meters)) as rng
FROM resale_hdb_price

UNION

SELECT 'distance_to_cbd' as title, AVG(distance_to_cbd) AS avg, STDDEV(distance_to_cbd) AS stdev, 
STDDEV(distance_to_cbd) / AVG(distance_to_cbd) as cv,
MIN(distance_to_cbd) AS min, MAX(distance_to_cbd) AS max, 
(MAX(distance_to_cbd) - MIN(distance_to_cbd)) as rng
FROM resale_hdb_price

UNION

SELECT 'distance_to_pri_school_meters' as title, AVG(distance_to_pri_school_meters) AS avg, STDDEV(distance_to_pri_school_meters) AS stdev, 
STDDEV(distance_to_pri_school_meters) / AVG(distance_to_pri_school_meters) as cv,
MIN(distance_to_pri_school_meters) AS min, MAX(distance_to_pri_school_meters) AS max, 
(MAX(distance_to_pri_school_meters) - MIN(distance_to_pri_school_meters)) as rng
FROM resale_hdb_price