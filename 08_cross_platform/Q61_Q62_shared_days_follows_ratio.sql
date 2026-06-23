-- ================================================
-- SECTION 8: Cross Platform Comparison
-- ================================================

-- Which platform has the best follows-to-reach ratio? (converts viewers to followers more efficiently)
WITH reach_totals AS (
  SELECT 'Instagram' AS platform, SUM(reach) AS total_reach FROM insta_posts
  UNION ALL
  SELECT 'Facebook' AS platform, SUM(reach) AS total_reach FROM fb_data
),
follow_totals AS (
  SELECT platform, SUM(primary_follows) AS total_follows
  FROM follows_insta_fb
  GROUP BY platform
)
SELECT r.platform,
       r.total_reach,
       f.total_follows,
       ROUND(f.total_follows::numeric
         / NULLIF(r.total_reach,0)*1000, 2) AS follows_per_1000_reach
FROM reach_totals r
JOIN follow_totals f ON r.platform = f.platform
ORDER BY follows_per_1000_reach DESC;
