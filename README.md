# Zomato SQL Data Analysis Project

Project Overview

The goal of this project is to solve various data analysis questions using SQL queries. You will be provided with a dataset comprising four tables that contain information similar to what you would expect from a food delivery service like Zomato. This project aims to help you understand how to work with SQL to extract insights from data.

Dataset Description

The dataset includes the following four tables:

    users: Contains information about users.
        userid: Unique identifier for each user.
        signup_date: The date the user signed up.

    goldusers_signup: Tracks users who signed up for a premium gold membership.
        userid: Unique identifier for each user.
        gold_signup_date: The date the user signed up for the gold membership.

    sales: Records sales transactions.
        userid: Unique identifier for each user.
        created_date: The date of the transaction.
        product_id: Unique identifier for each product.

    products: Contains information about products.
        product_id: Unique identifier for each product.
        product_name: Name of the product.
        price: Price of the product.
