# Metabase Monitoring Toolkit

This repository contains a collection of SQL queries for monitoring a Metabase instance. Metabase is a fantastic Business Intelligence tool, and having these analytics on top provides an extra layer of insight into your Metabase usage. The queries provide a wide range of information, including execution time statistics, usage frequency by time, user activity, broken queries, and more.

## Getting Started

To use these queries, you'll need to have an instance of Metabase running and have access to the underlying database. The queries are designed for PostgreSQL.

## Usage

Each SQL file in this repository represents a different monitoring query. Below are brief descriptions of each:

- **Median Query Execution Time**: Provides the median and maximum execution time for each query in the system.
- **Query Frequency by Day, Week, and Hour**: Measures the frequency of queries run on the system by the day of the week and the hour.
- **Dashboard Activity by Topic**: Summarizes the activities performed on each dashboard.
- **Query Performance Clustering**: Groups queries into clusters based on their execution times.
- **User Activity Metrics**: Measures the number of questions viewed and the number of active days for each user.
- **Identifying Broken Queries**: Lists all the broken queries along with the error messages, creators, and the last queried times.
- **Most Updated Queries Analysis**: Provides information on the most frequently updated queries.
- **No Execution Queries Identification**: Lists queries that have not been executed recently.
- **Tool Spot Metrics**: Detailed log of specific query usage.
- **Dashboard Usage Statistics**: Show usage statistics for each dashboard, including user and view count.

## Contributing

We welcome contributions! If you have a query that you think would be beneficial, please create a pull request.

## License

This project is open source and available under the [MIT License](LICENSE).

## Contact

Please open an issue in this repository if you have questions, suggestions, or problems.
