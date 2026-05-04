-- ================================================
-- SECTION 7: Top & Bottom Performers
-- ================================================

-- Top 10 Instagram posts by reach

SELECT post_id, date, post_type,
       LEFT(description, 80) AS caption_preview,
       reach, likes, comments, saves
FROM insta_posts
ORDER BY reach DESC
LIMIT 10;
