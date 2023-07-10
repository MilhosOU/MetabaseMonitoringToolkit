# Metabase Monitoring Toolkit

This repository contains a rich collection of SQL queries for monitoring a Metabase instance. Metabase is a robust Business Intelligence tool, and these analytics provide an extra layer of insight into your Metabase usage. The queries offer information on aspects such as execution time statistics, usage frequency by time, user activity, broken queries, and more.

## Getting Started

To utilize these queries, ensure you have an instance of Metabase running and have access to the underlying database. The queries are primarily designed for PostgreSQL.

## Usage

Each SQL file in this repository corresponds to a unique monitoring query. Here are brief descriptions of each query, including the new additions:

- **[Median Query Execution Time](./median_query_execution_time.sql)**: Provides the median and maximum execution time for each query.
- **[Query Frequency by Day, Week, and Hour](./query_frequency_by_day_week_hour.sql)**: Measures the frequency of queries run by day of the week and hour.
- **[Dashboard Activity by Topic](./dashboard_activity_by_topic.sql)**: Summarizes activities performed on each dashboard.
- **[Query Performance Clustering](./query_performance_clustering.sql)**: Groups queries based on their execution times.
- **[User Activity Metrics](./user_activity_metrics.sql)**: Measures the number of questions viewed and the number of active days for each user.
- **[Identifying Broken Queries](./identifying_broken_queries.sql)**: Lists all broken queries along with their error messages, creators, and the last queried times.
- **[Most Updated Queries Analysis](./most_updated_queries_analysis.sql)**: Provides information on the most frequently updated queries.
- **[No Execution Queries Identification](./no_execution_queries_identification.sql)**: Lists queries that have not been executed recently.
- **[Tool Spot Metrics](./tool_spot_metrics.sql)**: Detailed log of specific query usage.
- **[Dashboard Usage Statistics](./dashboard_usage_statistics.sql)**: Shows usage statistics for each dashboard, including user and view count.
- **[Real Time Dashboard Usage](./real_time_dashboard_usage.sql)**: Returns real-time usage information for selected dashboards.
- **[Users Activity Dashboard](./users_activity_dashboard.sql)**: Summarizes dashboard viewing activity and active days for each user.
- **[Dashboard by Maintenance Type](./dashboard_by_maintenance_type.sql)**: Lists dashboards by the frequency of maintenance operations performed on them.
- **[Real Time Dashboard Usage by Dashboard](./real_time_dashboard_usage_by_dashboard.sql)**: Provides real-time usage statistics for each dashboard.
- **[Most Updated Queries](./most_updated_queries.sql)**: Lists the most frequently updated queries in specified dashboards.
- **[Dashboard Usage by Day](./dashboard_usage_by_day.sql)**: Presents daily usage statistics for selected dashboards.
- **[Dashboard Usage by Dashboard](./dashboard_usage_by_dashboard.sql)**: Summarizes usage statistics for each dashboard over the past 30 days.
- **[Dashboard Usage by User](./dashboard_usage_by_user.sql)**: Provides usage statistics for each dashboard by user.

## Contributing

Contributions are warmly welcomed! If you have a query that you think would be beneficial, please feel free to create a pull request.
