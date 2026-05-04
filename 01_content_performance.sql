-- ================================================
-- SECTION 1: CONTENT PERFORMANCE
-- ================================================
-- Which Instagram post type has the best engagement rate? (likes + comments + shares + saves) / reach
SELECT post_type,
       ROUND(
AVG((likes + comments + shares + saves) * 100.0 / NULLIF(reach, 0)), 2) AS avg_engagement_rate_pct,
       COUNT(*) AS total_posts
FROM insta_posts
GROUP BY post_type
ORDER BY avg_engagement_rate_pct DESC;
