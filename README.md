📊 Social Media Performance Analysis — Hair Studio (Facebook & Instagram)
A SQL-based data analysis project examining 2 years of real Facebook and Instagram data for a hair studio in Romania. Built with PostgreSQL, this project uncovers content performance patterns, audience growth trends, engagement insights, and platform-specific behaviour to help the business make smarter social media decisions.
---
🗂️ Project Overview
Detail	Info
Client	Real hair studio, Romania (anonymised)
Data Period	2 years of historical social media data
Platforms	Facebook & Instagram
Database	PostgreSQL (via PgAdmin)
Tools Used	PostgreSQL, PgAdmin, Microsoft Excel, Canva
Query Count	15 curated SQL queries across 10 analysis sections
---
🔍 Analysis Sections
The project is organised into 10 thematic sections, each addressing a key business question:
Content Performance — Which post types and topics drive the most results?
Best Time to Post — When is the audience most active and receptive?
Follower Growth — How and when does the audience grow?
Reach Analysis — How far does content travel beyond existing followers?
Engagement Analysis — How does the audience interact with content?
Stories Performance — How do Stories compare to feed posts?
Trends — What seasonal and long-term patterns exist?
Monetization Insights — Which content types best support business goals?
Top & Bottom Performers — What are the best and worst performing posts?
Cross-Platform Comparison — How does Facebook performance compare to Instagram?
---
💡 Key Findings
🎥 Reels with Real Client Transformations Dominate
Reels showcasing actual client hair transformations generate 77–87% engagement rates — far exceeding the industry average of 1–3%. This is the single highest-performing content format across both platforms.
📚 Educational > Promotional
Educational content about hair problems (damage, hair loss, treatments) consistently outperforms promotional content on both Facebook and Instagram. The audience responds to value-first content rather than direct advertising.
📉 Facebook Reach Has Plateaued
Facebook organic reach has stabilised at approximately 250 impressions per post, regardless of format or content type. Topic relevance and seasonal timing have a greater impact on performance than post format on this platform.
📈 Instagram Grows Fastest in January
The account sees its highest Instagram follower growth in January, driven by "new year, new look" motivation. This seasonal peak should be anticipated and planned for months in advance with dedicated content campaigns.
📅 Clear Seasonal Pattern on Facebook
Facebook engagement follows a predictable annual cycle:
Strong: January, March
Weak: April through August
Recovery: September and October
This pattern enables proactive content planning and realistic performance benchmarking throughout the year.
---
## 📸 Query Results — Screenshots

### Instagram Engagement Rate by Post Type
![Engagement Rate by Post Type](screenshots/Q07_engagement_rate_by_post_type.png)
*Reels generate 77-87% engagement rate vs 3% for static photos*

### Best Hour to Post on Instagram
![Best Hour to Post](screenshots/Q09_best_hour_instagram.png)
*Posts published between 18:00-20:00 reach the most people*

### Platform Growth Comparison
![Platform Growth](screenshots/Q17_platform_growth_comparison.png)
*Instagram grows 3x faster than Facebook over the analysis period*

### 2024 vs 2025 Performance Comparison
![Year Comparison](screenshots/Q47_2024_vs_2025_comparison.png)
*Overall reach and engagement improved significantly in 2025*
---
📁 Repository Structure
```
Hair-studio-social-media-analysis/
│
├── 01_content_performance.sql
├── 02_content_performance.sql
├── 03_best_time_to_post.sql
├── 04_best_time_to_post.sql
├── 05_audience_follower_growth.sql
├── 06_audience_follower_growth.sql
├── 07_audience_follower_growth.sql
├── 08_reach_and_visibility.sql
├── 09_reach_and_visibility.sql
├── 10_engagement_deep_dive.sql
├── 11_trends_over_time.sql
├── 12_trends_over_time.sql
├── 13_top_and_bottom_performers.sql
├── 14_cross_platform_comparison.sql
├── 15_cross_platform_comparison.sql
├── .gitignore
└── README.md
```
> ⚠️ **Note on Data Privacy:** Raw client data is not included in this repository out of respect for client confidentiality. The analysis was performed on real data exported from Meta Business Suite and prepared in Excel before being imported into PostgreSQL.
---
🧰 Tools & Technologies
Tool	Purpose
PostgreSQL	Database engine for all queries
PgAdmin 4	Query editor and database management
Microsoft Excel	Data cleaning and preparation before import
Canva	Business presentation of key insights
Git & GitHub	Version control and project sharing
---
👤 About This Project
This project was completed as part of my journey into Data Analytics. It represents my first end-to-end analysis project using real-world client data — from raw data preparation in Excel, through SQL analysis in PostgreSQL, to communicating findings in a business presentation.
The goal was not only to practise SQL skills but to produce genuinely useful insights that the studio owner can act on.
---
📬 Contact
Feel free to connect with me on LinkedIn or reach out if you have questions about this project.
LinkedIn: https://www.linkedin.com/in/andreea-melinte-0349707a/
---
Data used with client permission. All personally identifiable information has been removed.
