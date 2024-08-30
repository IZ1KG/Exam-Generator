# Exam-Generator
Exam Generator was created for the Database Course, It's a PostgreSQL-managed system designed for creating exams, tailored for users such as teachers, educators, or any teaching institution.

Overview
The Exam Generator is designed to help educators, instructors, and administrators create and manage customized exams efficiently. Developed as part of a database course project, this system uses a PostgreSQL database to store and manage a diverse set of closed and open questions, along with their corresponding answers.

The program offers both manual and automatic modes for generating exams, ensuring that no question is repeated within the same test, providing a flexible and reliable test creation process.

Features
Create and Customize Exams:

Manual Mode: Allows users to manually select specific questions from the database to include in an exam.
Automatic Mode: Automatically generates exams by randomly selecting questions from the database based on specified criteria.
Manage Database Content:

Add Professions: Insert new professions into the database, categorizing questions by subject area.
Add Questions: Add new questions to the database, specifying their type (multiple-choice or open-ended) and difficulty level.
Add Answers: For multiple-choice questions, add corresponding answers and mark which ones are correct.
Update and Delete: Modify or remove existing professions, questions, and answers to keep the exam content current and accurate.
User Authentication:

Secure login process to access the system, ensuring that only authorized users can manage and generate exams.
User details, including usernames, passwords, and contact information, are securely stored in the database.
Generate and Export Exams:

Create exam files in text format, which include the questions and, optionally, the correct answers.
Ensure that the generated exams are ready for distribution to students.
Data Integrity and Security:

All operations, including adding, updating, or deleting data, are securely saved in the PostgreSQL database.
The system ensures data integrity even in the event of a crash, maintaining the reliability of the exam creation process.
Database Structure
The system’s database is organized into several key tables:

User Table (User):

Stores user credentials and contact information.
uID: Primary key, unique identifier for each user.
username, password, phoneNumber: User details.
Profession Table (Profession):

Manages different subject areas for questions.
pID: Primary key, unique identifier for each profession.
pName: Name of the profession.
Question Table (Question):

Contains the exam questions, linked to their profession.
qID: Primary key, unique identifier for each question.
pID: Foreign key, links the question to a profession.
qString: The text of the question.
type: Indicates whether the question is multiple-choice (1) or open-ended (2).
difficulty: Difficulty level of the question.
Answer Table (Answer):

Stores possible answers for multiple-choice questions.
aID: Primary key, unique identifier for each answer.
qID: Foreign key, links the answer to a question.
aString: The text of the answer.
isCorrect: Boolean flag indicating whether the answer is correct.
Exam Table (Exam):

Manages exams by linking them to users and professions.
eID: Primary key, unique identifier for each exam.
uID: Foreign key, links the exam to a user.
pID: Foreign key, links the exam to a profession.
ExamQuestion Table (ExamQuestion):

Links questions to exams, ensuring no repetition within the same test.
eID: Foreign key, links the question to an exam.
qID: Foreign key, links the exam to a question.
How It Works
User Authentication:

Log in to your account using your credentials to access the Exam Generator.
Manage Data:

Add, update, or delete professions, questions, and answers in the database.
Ensure all questions and answers are properly categorized and up-to-date.
Create Exams:

Choose between Manual Mode or Automatic Mode:
Manual Mode: Select specific questions from the database to create a customized exam.
Automatic Mode: Let the system automatically select questions based on predefined criteria.
Export Exams:

Generate exam files in text format, which can include just the questions or both questions and correct answers.
Data Security:

All operations are securely logged in the database, ensuring data integrity even in case of a system crash.

Data base strcuture:

![Screenshot 2024-08-30 164717](https://github.com/user-attachments/assets/44b2fdf7-e6fa-470d-ad13-b5008db55c72)

![Screenshot 2024-08-30 164724](https://github.com/user-attachments/assets/a4803503-6112-4c64-9f8f-9b7a0d7bd2a0)


