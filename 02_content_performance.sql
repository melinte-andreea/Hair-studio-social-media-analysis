-- ================================================
-- SECTION 1: CONTENT PERFORMANCE
-- ================================================

-- Which Facebook post type has the best engagement rate? (reactions + comments + shares) / reach
SELECT post_type,
       ROUND(AVG((reactions + comments + shares) * 100.0 / NULLIF(reach, 0)), 2) AS  avg_engagement_rate_pct,
       COUNT(*) AS total_posts
FROM fb_data
GROUP BY post_type
ORDER BY avg_engagement_rate_pct DESC;

