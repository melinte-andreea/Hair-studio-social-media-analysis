-- ================================================
-- SECTION 2: Best Time to Post
-- ================================================

-- Which day of the week gets the most engagement on Facebook?
SELECT day_of_week,
              ROUND(AVG(reactions + comments + shares ),0) AS avg_engagement,
	   COUNT(*) total_posts
FROM fb_data
GROUP BY 1
ORDER BY avg_engagement DESC
