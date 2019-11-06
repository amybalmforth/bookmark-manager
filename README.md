### To set up the database

1. Connect to psql
2. Create the 'bookmark_manager' database using the psql command ``` CREATE DATABASE bookmark_manager; ```
3. Connect to the database using the pqsl command ``` \c bookmark_manager; ```
4. Run the query we have saved in the file 01_create_bookmarks_table.sql to create a bookmarks table

### To run the Bookmark Manager app:

```
rackup -p 3000
```

To view bookmarks, navigate to 'localhost:9292/bookmarks'

### Set up a test database

1. Connect to psql
2. Create the 'test_bookmark_manager' database using the psql command ``` CREATE DATABASE test_bookmark_manager; ```
3. Connect to the database using the pqsl command ``` \c bookmark_manager; ```
4. Run the query we have saved in the file 01_create_bookmarks_table.sql to create a bookmarks table
