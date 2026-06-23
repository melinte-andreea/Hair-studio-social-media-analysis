-- ================================================
-- SECTION 6: Trends Over Time
-- ================================================

-- How has average monthly reach changed from 2024 to 2026 on Instagram?
SELECT year, month,
       ROUND(AVG(reach), 0) AS avg_reach,
       SUM(reach) AS total_reach,
       COUNT(*) AS posts_published
FROM insta_posts
GROUP BY year, month
ORDER BY year, month;
