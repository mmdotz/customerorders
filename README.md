#Customer Orders App

##Description:
This app tracks the orders of 30 customers. You may view all of the users (customers), orders, or all of the items a user has, and the user's ship to address.


##Features

+ View all records in a table
+ View all items sold to a specific user
+ View all users who bought a specific item

##Instructions
Perform `GET`, `POST`, `PUT` and `DELETE` actions on the four tables (items, orders, addresses, and users) by using the following commands:

-- To view all records in a table:
Send a `GET` request to https://powerful-mountain-9724.herokuapp.com/ .  The response will be in JSON format.

-- To view a particular record in a table:
Send a `GET` request to https://powerful-mountain-9724.herokuapp.com/tablename/id . The response will be in JSON format.

-- To create or update a new record in a table:
CREATE: Send a `POST` request (using Postman) to https://powerful-mountain-9724.herokuapp.com/tablename/

UPDATE: Send a `PUT` request (using Postman) to https://powerful-mountain-9724.herokuapp.com/tablename/id

For a new or updated `address` use the following parameters:
"street_name"    as string (omit all quotations)
"city"           as string
"state"          as string
"zip"            as integer

For a new or updated `user` use the following parameters:
"first_name"  as string
"last_name"   as string
"age"         as integer

For a new or updated `item` use the following parameters:
"name"        as string
"desc"        as string
"price"       as integer

For a new or updated `order` use the following parameters:
"qty"         as integer

The above responses will be in JSON format.

-- To delete a particular record in a table:
Send a `DELETE` request to https://powerful-mountain-9724.herokuapp.com/tablename/id . The response will be a message that the records was deleted.

##Using this file
You may view this app at the following URL: https://powerful-mountain-9724.herokuapp.com/
The landing page lists all users.
