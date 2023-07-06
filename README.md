# Metabase Monitoring Toolkit

This repository contains a collection of SQL queries for monitoring a Metabase instance. Metabase is a fantastic Business Intelligence tool, and having these analytics on top provides an extra layer of insight into your Metabase usage. The queries provide a wide range of information, including execution time statistics, usage frequency by time, user activity, broken queries, and more.

## Getting Started

To use these queries, you'll need to have an instance of Metabase running and have access to the underlying database. The queries are designed for PostgreSQL.

## Usage

Each SQL file in this repository represents a different monitoring query. Below are brief descriptions of each:

- **[Median Query Execution Time](./median_query_execution_time.sql)**: Provides the median and maximum execution time for each query in the system.
- **[Query Frequency by Day, Week, and Hour](./query_frequency_by_day_week_hour.sql)**: Measures the frequency of queries run on the system by the day of the week and the hour.
- **[Dashboard Activity by Topic](./dashboard_activity_by_topic.sql)**: Summarizes the activities performed on each dashboard.
- **[Query Performance Clustering](./query_performance_clustering.sql)**: Groups queries into clusters based on their execution times.
- **[User Activity Metrics](./user_activity_metrics.sql)**: Measures the number of questions viewed and the number of active days for each user.
- **[Identifying Broken Queries](./identifying_broken_queries.sql)**: Lists all the broken queries along with the error messages, creators, and the last queried times.
- **[Most Updated Queries Analysis](./most_updated_queries_analysis.sql)**: Provides information on the most frequently updated queries.
- **[No Execution Queries Identification](./no_execution_queries_identification.sql)**: Lists queries that have not been executed recently.
- **[Tool Spot Metrics](./tool_spot_metrics.sql)**: Detailed log of specific query usage.
- **[Dashboard Usage Statistics](./dashboard_usage_statistics.sql)**: Show usage statistics for each dashboard, including user and view count.

## Contributing

We welcome contributions! If you have a query that you think would be beneficial, please create a pull request.

## License

This project is open source and available under the [MIT License](LICENSE).

## Contact

Please open an issue in this repository if you have questions, suggestions, or problems.
