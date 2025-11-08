# Node.js & PGLite Database Starter

A starter project for learning SQL database fundamentals with Node.js and PGLite (a lightweight PostgreSQL-compatible database).

## 📚 Learning Objectives

- **Creating Database Tables** - Design and implement relational database schemas
- **Primary and Foreign Keys** - Establish relationships between tables
- **Column Constraints** - Enforce data integrity with constraints
- **Joining Tables** - Combine data from multiple tables with SQL joins
- **Database Operations** - CRUD operations and schema migrations

## 🛠 Tech Stack

- **Node.js** - Runtime environment
- **PGLite** - Lightweight PostgreSQL-compatible database
- **SQL** - Database query language
- **ES6 Modules** - Modern JavaScript modules

## 🚀 Quick Start

### Prerequisites
- Node.js (v14 or higher)
- npm

### Installation

1. **Clone the repository**
   ```bash
   git clone <your-repo-url>
   cd node-starter

2. Initialize the project
      npm init -y
4. Install dependencies
    npm install @electric-sql/pglite
5. Run the application
   node index.js

📁 Project Structure
node-starter/
├── index.js              # Main application file
├── populate-tables.sql   # SQL for creating and populating tables
├── alter-table.sql       # Schema migration SQL
├── query.sql            # Example SQL queries
├── package.json         # Project configuration
└── README.md           # This file
