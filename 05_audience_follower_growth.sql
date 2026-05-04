-- ================================================
-- SECTION 3: Audience & Follower Growth
-- ================================================

-- What is the total follower growth per month for Facebook and Instagram combined?
SELECT year, month, SUM(primary_follows)
FROM follows_insta_fb
GROUP BY 1,2
ORDER BY 1,2;
