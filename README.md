# 📚 School Database Project

Welcome to the **School Database Project**! This project contains the SQL structure for managing a school's database, including tables for teachers, subjects, and their relationships.

## 📂 Project Structure

```
📂 school_db_project/
│── 📂 sql/                   # SQL scripts for database creation and queries
│── 📂 backups/               # Database backups
│── 📂 docs/                  # Documentation and diagrams
│   │── ERD_diagram.png       # Entity-Relationship Diagram
│   │── database_docs.md      # Additional documentation
│── .gitignore                # Files to be ignored by Git
│── README.md                 # Main project description
```

## 📜 Database Schema
The database consists of the following tables:

- **TEACHER**: Stores information about teachers.
- **SUBJECT**: Contains subject details like name and credits.
- **TEACHERSUBJECT**: Establishes the many-to-many relationship between teachers and subjects.
- **AUDIT_SUBJECT**: Used for tracking subject modifications.
- **BACKUP_TEACHER**: Backup storage for teacher data.

## 🛠️ Installation & Usage

1. Clone this repository:
   ```sh
   https://github.com/Y0i7/Edu-data-model.git
   ```
2. Import the SQL scripts from the `sql/` folder into your database.
3. Use your preferred SQL client (e.g., MySQL Workbench, pgAdmin) to run queries.

## 📊 ER Diagram

![ERD Diagram](docs/ERD_diagram.png)

## 📖 Documentation
For a detailed explanation of the database schema, relationships, and queries, check the [database_docs.md](docs/database_docs.md) file.

## 📝 License
This project is open-source. Feel free to modify and use it according to your needs.

---

💡 **Contributions & Feedback**
If you find any issues or have suggestions, feel free to open an issue or submit a pull request. Happy coding! 🚀

