-- ================================================
-- SECTION 8: Cross Platform Comparison
-- ================================================

-- Which platform has better overall engagement rate?
SELECT platform,
       ROUND(AVG(engagement_rate), 2) AS avg_engagement_rate_pct,
       COUNT(*) AS total_posts
FROM (
    SELECT 'Instagram' AS platform,
           (likes+comments+shares+saves)::numeric 
           / NULLIF(reach,0)*100 AS engagement_rate
    FROM insta_posts 
    WHERE reach > 0

    UNION ALL

    SELECT 'Facebook' AS platform,
           (reactions+comments+shares)::numeric 
           / NULLIF(reach,0)*100 AS engagement_rate
    FROM fb_data 
    WHERE reach > 0
) combined
GROUP BY platform
ORDER BY avg_engagement_rate_pct DESC;
