-- ================================================
-- SECTION 3: Audience & Follower Growth
-- ================================================

-- Which platform is growing faster — Facebook or Instagram?
SELECT platform,
       SUM(primary_follows) AS total_follows,
       ROUND(AVG(primary_follows), 2) AS avg_daily_follows
FROM follows_insta_fb
GROUP BY platform
ORDER BY total_follows DESC;
