# You have the following tables with their fields:
# users: user_id, username, password, created_date
# orders: id, user_id, product_id, order_amount, order_date
# products: id, name
#
# In this test you will only be tested on Syntax and validity of the queries, there is no database system running on this laptop
#
# Write two SQL queries that will:
# - List all the users and sum their total life order amounts
#   (Expected output: user_id, username, lifetime_order_amount)

#
# - List all of the products and concatenate the usernames of the users who bought it
#   (Expected output: product_id, product_name, usernames) (usernames = john@packwire.com,phil@packwire.com)

ANSWER___
1. SELECT users.user_id, username, SUM(order_amount) as lifetime_order_amount
    FROM users, orders WHERE users.user_id = orders.user_id

2. SELECT product_id, name as product_name, users.username as usernames 
    FROM orders, products, users WHERE users.user_id = orders.user_id AND
    products.id = orders.id AND username = 'john@packwire.com' 
    OR username = 'phil@packwire.com'
