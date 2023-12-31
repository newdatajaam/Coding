SELECT REST_REVIEW.REST_ID, REST_NAME, FOOD_TYPE, FAVORITES, ADDRESS, round(AVG(REVIEW_SCORE),2) AS SCORE
FROM REST_INFO RIGHT OUTER JOIN REST_REVIEW
ON REST_INFO.REST_ID = REST_REVIEW.REST_ID
WHERE ADDRESS LIKE '서울%'
GROUP BY REST_REVIEW.REST_ID

ORDER BY AVG(REVIEW_SCORE) DESC, FAVORITES DESC
;