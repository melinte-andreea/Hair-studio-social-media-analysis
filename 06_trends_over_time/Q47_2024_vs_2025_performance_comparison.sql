-- ================================================
-- SECTION 6: Trends Over Time
-- ================================================

-- How does 2025 performance compare to 2024 overall?
SELECT platform, year,
       ROUND(AVG(reach), 0) AS avg_reach,
       ROUND(AVG(eng_rate), 2) AS avg_engagement_rate,
       COUNT(*) AS total_posts
FROM (
  SELECT 'Instagram' AS platform, year, reach,
    (likes+comments+shares+saves)::numeric / NULLIF(reach,0)*100 AS eng_rate
  FROM insta_posts WHERE year IN (2024, 2025)
  UNION ALL
  SELECT 'Facebook' AS platform, year, reach,
    (reactions+comments+shares)::numeric / NULLIF(reach,0)*100 AS eng_rate
  FROM fb_data WHERE year IN (2024, 2025)
) combined
GROUP BY platform, year
ORDER BY platform, year;
