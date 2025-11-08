We'll Learn:

1.  Creating Database Tables
2.  Primary and Foreigner Keys
3.  Column Constraints
4.  Joining Tables
5.  And more challanges..

Step to create this package

1. # cd node-starter
2. # Initialize npm Package: npm init -y
3. # step 2 creates a basic package.json:
   {
   "name": "node-starter",
   "version": "1.0.0",
   "description": "",
   "main": "index.js",
   "scripts": {
   "test": "echo \"Error: no test specified\" && exit 1"
   },
   "keywords": [],
   "author": "",
   "license": "ISC"
   }
4. # Modify package.json

Added "private": true - prevents accidental publishing to npm

Added "type": "module" - enables ES6 modules (import/export syntax)

Removed unnecessary fields - like version, description, main, keywords, author, license.

5. # npm install @electric-sql/pglite
   Key command Recap

# Initialize project

npm init -y

# Install pglite

npm install @electric-sql/pglite

# Run your app

node index.js

1. # poulate-tables.sql file created
2. # Inserted some data for dealership
3. # populate our new Tables --write this inside index.js
   const populateTables = fs.readFileSync("populate-tables.sql", "utf8");
   await db.exec(populateTables);
4. # query.sql " SELECT \* FROM dealerships; and run cmd "npm index.js" --> check Table created
5. # same step fro staff table
6. # create file alter-table.sql
7. solve this -- 1. Add the column (initially nullable)
8. //Alter the extisting cars tables in the index.js
9. write query like SELECT id, dealership_id, brand, model FROM cars; adn npm index.js
10.
