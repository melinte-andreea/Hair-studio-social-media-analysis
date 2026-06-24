-- ================================================
-- SECTION 3: Audience & Follower Growth
-- ================================================
-- Q16 + Q17: Monthly Follower Growth by Platform
--
-- Step 1: Detailed breakdown by year, month and platform
-- Shows total and average daily follows per month
-- for Facebook and Instagram separately
-- ================================================

SELECT
    year,
    month,
    platform,
    SUM(primary_follows) AS total_follows,
    ROUND(AVG(primary_follows), 2) AS avg_daily_follows
FROM follows_insta_fb
GROUP BY year, month, platform
ORDER BY year, month, platform;


-- ================================================
-- Step 2: Pivot format — optimised for line chart
--
-- Reshapes data into side-by-side columns per platform
-- Ready for direct import into Power BI, Tableau or Canva
-- ================================================

SELECT
    year,
    month,
    SUM(CASE WHEN platform = 'Facebook' 
        THEN primary_follows END) AS facebook_follows,
    SUM(CASE WHEN platform = 'Instagram' 
        THEN primary_follows END) AS instagram_follows
FROM follows_insta_fb
GROUP BY year, month
ORDER BY year, month;