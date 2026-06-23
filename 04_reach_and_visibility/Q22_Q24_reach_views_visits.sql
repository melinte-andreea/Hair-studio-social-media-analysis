-- ================================================
-- SECTION 4: Reach & Visibility
-- ================================================

-- What is the total reach per month for Facebook and Instagram?
SELECT platform, year, month,
       SUM(reach) AS total_reach
FROM (
  SELECT platform, year, month, reach FROM insta_posts
  UNION ALL
  SELECT platform, year, month, reach FROM fb_data
) combined
GROUP BY platform, year, month
ORDER BY platform, year, month;
