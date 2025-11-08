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
