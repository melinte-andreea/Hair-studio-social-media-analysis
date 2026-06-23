-- ================================================
-- SECTION 5: Engagement Deep Dive
-- ================================================

-- Which Instagram posts had high reach but low engagement? (content people saw but ignored)
WITH averages AS (
  SELECT AVG(reach) AS avg_reach,
         AVG((likes+comments+shares+saves)*100
           / NULLIF(reach,0)*100) AS avg_eng_rate
  FROM insta_posts
)
SELECT ip.post_id, ip.date, ip.post_type,
       ip.reach,
       ROUND((ip.likes+ip.comments+ip.shares+ip.saves)*100
         / NULLIF(ip.reach,0)*100, 2) AS engagement_rate
FROM insta_posts ip, averages a
WHERE ip.reach > a.avg_reach
  AND (ip.likes+ip.comments+ip.shares+ip.saves)*100
       / NULLIF(ip.reach,0)*100 < a.avg_eng_rate
ORDER BY ip.reach DESC;
