-- ================================================
-- SECTION 4: Reach & Visibility
-- ================================================

-- On Facebook, how much of the reach comes from organic posts vs boosted posts?
SELECT
  SUM(reach_from_organic_posts) AS organic_reach,
  SUM(reach_from_boosted_posts) AS boosted_reach,
  SUM(reach) AS total_reach,
  ROUND(SUM(reach_from_organic_posts)*100
    / NULLIF(SUM(reach), 0) * 100, 1) AS organic_pct,
  ROUND(SUM(reach_from_boosted_posts)*100
    / NULLIF(SUM(reach), 0) * 100, 1) AS boosted_pct
FROM fb_data;
