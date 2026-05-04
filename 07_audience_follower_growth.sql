-- ================================================
-- SECTION 3: Audience & Follower Growth
-- ================================================

-- Is there a correlation between posting frequency and follower growth per month?

WITH post_counts AS (
    SELECT year, month,
           COUNT(*) AS posts_published
    FROM insta_posts
    GROUP BY year, month
),
ig_follows AS (
    SELECT year, month,
           SUM(primary_follows) AS monthly_follows
    FROM follows_insta_fb
    WHERE platform = 'Instagram'
    GROUP BY year, month
)
SELECT p.year, p.month,
       p.posts_published,
       f.monthly_follows
FROM post_counts p
JOIN ig_follows f
ON p.year = f.year AND p.month = f.month
ORDER BY p.year, p.month;
