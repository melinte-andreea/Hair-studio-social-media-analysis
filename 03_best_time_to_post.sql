-- ================================================
-- SECTION 2: Best Time to Post
-- ================================================

-- Which hour of the day gets the most reach on Instagram posts?
SELECT DATE_PART('hour', "time" + INTERVAL '10 hours') AS hour,
       ROUND(AVG(reach), 0) AS avg_reach,
       COUNT(*) AS total_posts
FROM insta_posts
GROUP BY DATE_PART('hour', "time" + INTERVAL '10 hours')
ORDER BY avg_reach DESC
LIMIT 10
