-- ================================================
-- SECTION 2: Best Time to Post
-- ================================================
-- Q12B: Best Hour and Day of Week to Post — Instagram
-- 
-- Step 1: Full breakdown by day and hour
-- Shows engagement rate, reach and post count
-- for every day/hour combination with 5+ posts
-- ================================================

SELECT
    day_of_week,
    DATE_PART('hour', "time" + INTERVAL '10 hours') AS hour,
    ROUND(AVG(likes + comments + shares + saves), 0) AS avg_engagement,
    ROUND(AVG(reach), 0) AS avg_reach,
    COUNT(*) AS posts_published,
    ROUND(AVG(
        (likes + comments + shares + saves) * 100.0 
        / NULLIF(reach, 0)
    ), 2) AS avg_engagement_rate_pct,
    ROUND(AVG(reach) / NULLIF(COUNT(*), 0), 0) AS reach_per_post
FROM insta_posts
GROUP BY day_of_week, 
         DATE_PART('hour', "time" + INTERVAL '10 hours')
HAVING COUNT(*) >= 5
ORDER BY avg_engagement_rate_pct DESC;


-- ================================================
-- Step 2: Pivot table — engagement rate by day and hour
-- 
-- Uses Step 1 results to create a heatmap-style view
-- showing which day/hour combinations perform best
-- ================================================

SELECT
    day_of_week,
    ROUND(MAX(CASE WHEN hour = 12 
        THEN avg_engagement_rate END), 2) AS "Hour 12",
    ROUND(MAX(CASE WHEN hour = 13 
        THEN avg_engagement_rate END), 2) AS "Hour 13",
    ROUND(MAX(CASE WHEN hour = 14 
        THEN avg_engagement_rate END), 2) AS "Hour 14"
FROM (
    SELECT
        day_of_week,
        DATE_PART('hour', "time" + INTERVAL '10 hours') AS hour,
        AVG(
            (likes + comments + shares + saves) * 100.0 
            / NULLIF(reach, 0)
        ) AS avg_engagement_rate
    FROM insta_posts
    GROUP BY day_of_week, 
             DATE_PART('hour', "time" + INTERVAL '10 hours')
    HAVING COUNT(*) >= 5
) sub
GROUP BY day_of_week
ORDER BY CASE day_of_week
    WHEN 'Monday'    THEN 1
    WHEN 'Tuesday'   THEN 2
    WHEN 'Wednesday' THEN 3
    WHEN 'Thursday'  THEN 4
    WHEN 'Friday'    THEN 5
    WHEN 'Saturday'  THEN 6
    WHEN 'Sunday'    THEN 7
END;
