
# 📘 গল্পের ছলে PostgreSQL শেখা: রফিকের ডেটাবেজ অভিযান

একদিনের কথা। **রফিক** নামের এক তরুণ প্রোগ্রামার সিদ্ধান্ত নিলো সে নিজেই একটা ছোটখাটো সফটওয়্যার বানাবে যেখানে সে ছাত্রদের নাম, রোল নাম্বার, ক্লাস ইত্যাদি সংরক্ষণ করতে পারবে।  
সে শুনেছে **PostgreSQL** নামক একটি শক্তিশালী ডেটাবেজ ম্যানেজমেন্ট সিস্টেম আছে যা দিয়ে এই কাজগুলো করা যায়।

---

## 🏗️ ১. ডেটাবেজ তৈরি করা

প্রথমেই রফিক ভাবলো, “আমাকে তো একটা খালি ঘর তৈরি করতে হবে যেখানে আমি সব তথ্য রাখব।” তাই সে নিচের কমান্ড দিয়ে একটি ডেটাবেজ তৈরি করলো—

```sql
CREATE DATABASE school;
```

তারপর সে সেই ডেটাবেজে ঢুকে গেল—

```sql
\c school
```

---

## 📦 ২. টেবিল তৈরি

এখন রফিক একটি `students` নামক টেবিল তৈরি করলো, যেখানে থাকবে ছাত্রদের নাম, রোল নাম্বার আর বয়স।

```sql
CREATE TABLE students (
    id SERIAL PRIMARY KEY,
    name VARCHAR(100),
    roll INT,
    age INT
);
```

---

## 📝 ৩. ডেটা যোগ করা (Insert)

রফিক এখন কয়েকজন ছাত্রের তথ্য যুক্ত করলো:

```sql
INSERT INTO students (name, roll, age) VALUES ('রায়হান', 1, 14);
INSERT INTO students (name, roll, age) VALUES ('সামিয়া', 2, 15);
```

---

## 🔍 ৪. ডেটা দেখা (Select)

কিছুক্ষণ পর রফিক ভাবলো, “চল দেখি টেবিলে কী আছে!”

```sql
SELECT * FROM students;
```

---

## ✏️ ৫. ডেটা আপডেট করা (Update)

রায়হানের বয়স ভুল হয়েছিল, সে আসলে ১৫ বছর বয়সী। তাই রফিক ঠিক করলো—

```sql
UPDATE students SET age = 15 WHERE roll = 1;
```

---

## ❌ ৬. ডেটা মুছে ফেলা (Delete)

সামিয়া স্কুল বদলে ফেলেছে, তাই রফিক তাকে তালিকা থেকে মুছে ফেললো—

```sql
DELETE FROM students WHERE roll = 2;
```

---

## ➕ ৭. নতুন কলাম যোগ করা

রফিক ভাবলো, “আমি যদি ছাত্রদের ঠিকানাও রাখতে চাই?” তাই সে নতুন একটি কলাম যুক্ত করলো—

```sql
ALTER TABLE students ADD COLUMN address TEXT;
```

---

## ✂️ ৮. কলাম মুছে ফেলা

রফিক পরে ঠিক করলো যে ঠিকানার দরকার নেই আর। সে কলামটি সরিয়ে দিলো—

```sql
ALTER TABLE students DROP COLUMN address;
```

---

## 🔄 ৯. টেবিলের নাম পরিবর্তন

রফিক ভাবলো, “students না বলে আমি যদি table টার নাম `learners` রাখি?”

```sql
ALTER TABLE students RENAME TO learners;
```

---

## 🧹 ১০. টেবিল মুছে ফেলা

পরীক্ষার শেষে রফিক ডেটাবেজ পরিষ্কার করে ফেললো:

```sql
DROP TABLE learners;
```

আর যদি পুরো ডেটাবেজটাই মুছে দিতে চায়:

```sql
DROP DATABASE school;
```

---

## 📚 রফিক যা শিখলো

| কাজ                     | কমান্ড                                          |
|--------------------------|--------------------------------------------------|
| ডেটাবেজ তৈরি             | `CREATE DATABASE school;`                      |
| ডেটাবেজে ঢোকা            | `\c school`                                   |
| টেবিল তৈরি               | `CREATE TABLE students (...);`                 |
| ডেটা যুক্ত               | `INSERT INTO students (...) VALUES (...);`     |
| ডেটা দেখা               | `SELECT * FROM students;`                      |
| ডেটা আপডেট              | `UPDATE students SET ... WHERE ...;`          |
| ডেটা মুছে ফেলা           | `DELETE FROM students WHERE ...;`             |
| নতুন কলাম যোগ           | `ALTER TABLE students ADD COLUMN ...;`        |
| কলাম মুছে ফেলা           | `ALTER TABLE students DROP COLUMN ...;`       |
| টেবিলের নাম পরিবর্তন     | `ALTER TABLE students RENAME TO learners;`    |
| টেবিল মুছে ফেলা          | `DROP TABLE learners;`                        |
| ডেটাবেজ মুছে ফেলা       | `DROP DATABASE school;`                       |

---

🎉 **এইভাবেই রফিক PostgreSQL দিয়ে ছোট থেকে বড় কাজ শিখে ফেললো গল্পের ছলে!**




# 📘 গল্পের ছলে PostgreSQL শেখা: রফিকের টার্মিনাল অ্যাডভেঞ্চার  - ২

রফিক এবার টার্মিনালে প্রতিটি কমান্ডের রিয়েল-টাইম আউটপুট দেখতে চায়। চলুন আমরা প্রতিটি উদাহরণের সাথে টার্মিনালের এক্সপেক্টেড আউটপুটও যোগ করি।

---

## 🔍 বেসিক সিলেক্ট উদাহরণ

**কমান্ড:**
```sql
SELECT student_id, first_name, email FROM students;
```

**টার্মিনাল আউটপুট:**
```
 student_id | first_name |        email        
------------+------------+--------------------
          1 | রায়হান     | raihan@example.com
          2 | সামিয়া     | samia@example.com
          3 | আরমান      | arman@example.com
(3 rows)
```

---

## 🔼 সর্টিং উদাহরণ

**কমান্ড:**
```sql
SELECT * FROM students ORDER BY first_name DESC;
```

**টার্মিনাল আউটপুট:**
```
 student_id | first_name | last_name |        email        | age
------------+------------+-----------+---------------------+-----
          2 | সামিয়া     | আহমেদ     | samia@example.com   |  15
          1 | রায়হান     | ইসলাম     | raihan@example.com  |  14
          3 | আরমান      | খান       | arman@example.com   |  13
(3 rows)
```

---

## 🌍 DISTINCT উদাহরণ

**কমান্ড:**
```sql
SELECT DISTINCT country FROM students;
```

**টার্মিনাল আউটপুট:**
```
 country 
---------
 বাংলাদেশ
 USA
 UK
 ভারত
(4 rows)
```

---

## 🎯 ফিল্টারিং উদাহরণ

**কমান্ড:**
```sql
SELECT * FROM students WHERE grade = 'A' AND course='Math';
```

**টার্মিনাল আউটপুট:**
```
 id | first_name | last_name | grade | course | age
----+------------+-----------+-------+--------+-----
  5 | জয়িতা      | সরকার     | A     | Math   |  16
 12 | আদিত্য     | দত্ত      | A     | Math   |  15
(2 rows)
```

---

## ✨ স্ট্রিং ফাংশন উদাহরণ

**কমান্ড:**
```sql
SELECT CONCAT(first_name,' ', last_name) AS full_name FROM students;
```

**টার্মিনাল আউটপুট:**
```
   full_name   
---------------
 রায়হান ইসলাম
 সামিয়া আহমেদ
 আরমান খান
(3 rows)
```

---

## 📊 অ্যাগ্রিগেশন উদাহরণ

**কমান্ড:**
```sql
SELECT AVG(age) FROM students;
```

**টার্মিনাল আউটপুট:**
```
        avg         
--------------------
 14.3333333333333333
(1 row)
```

---

## 🚫 NULL হ্যান্ডলিং উদাহরণ

**কমান্ড:**
```sql
SELECT COALESCE(email, 'email not provided') AS "Email" FROM students;
```

**টার্মিনাল আউটপুট:**
```
        Email        
---------------------
 raihan@example.com
 samia@example.com
 email not provided
(3 rows)
```

---

## 🌐 IN অপারেটর উদাহরণ

**কমান্ড:**
```sql
SELECT * FROM students WHERE country IN ('USA', 'UK');
```

**টার্মিনাল আউটপুট:**
```
 id | first_name | last_name | country | age
----+------------+-----------+---------+-----
  7 | জন         | স্মিথ     | USA     |  17
  9 | এমা        | জোন্স     | UK      |  16
(2 rows)
```

---

## 📅 BETWEEN উদাহরণ

**কমান্ড:**
```sql
SELECT * FROM students WHERE age BETWEEN 15 AND 17;
```

**টার্মিনাল আউটপুট:**
```
 id | first_name | last_name | age 
----+------------+-----------+-----
  2 | সামিয়া     | আহমেদ     |  15
  7 | জন         | স্মিথ     |  17
  9 | এমা        | জোন্স     |  16
(3 rows)
```

---

## 🔎 LIKE/ILIKE উদাহরণ

**কমান্ড:**
```sql
SELECT * FROM students WHERE first_name LIKE '%মা%';
```

**টার্মিনাল আউটপুট:**
```
 id | first_name | last_name 
----+------------+-----------
  2 | সামিয়া     | আহমেদ
 11 | সামিরা     | ইসলাম
(2 rows)
```

---

## 📑 পেজিনেশন উদাহরণ

**কমান্ড:**
```sql
SELECT * FROM students LIMIT 2 OFFSET 1;
```

**টার্মিনাল আউটপুট:**
```
 id | first_name | last_name 
----+------------+-----------
  2 | সামিয়া     | আহমেদ
  3 | আরমান      | খান
(2 rows)
```

---

## 🗑️ ডিলিট উদাহরণ

**কমান্ড:**
```sql
DELETE FROM students WHERE grade = 'B' RETURNING *;
```

**টার্মিনাল আউটপুট:**
```
 id | first_name | last_name | grade 
----+------------+-----------+-------
  4 | রিয়াদ      | রহমান     | B
  8 | সুমাইয়া    | আক্তার    | B
(2 rows)

DELETE 2
```

---

## ✏️ আপডেট উদাহরণ

**কমান্ড:**
```sql
UPDATE students SET age = age + 1 WHERE country = 'Bangladesh' RETURNING first_name, age;
```

**টার্মিনাল আউটপুট:**
```
 first_name | age 
------------+-----
 রায়হান     |  15
 সামিয়া     |  16
 আরমান      |  14
(3 rows)

UPDATE 3
```

---

## 📚 আজকের শেখা গুরুত্বপূর্ণ কমান্ডসমূহ

| কাজ | কমান্ড |
|------|--------|
| ইউনিক কনস্ট্রেইন্ট যোগ | `ALTER TABLE users ADD CONSTRAINT uniq_name UNIQUE(column);` |
| ইউনিক কনস্ট্রেইন্ট সরানো | `ALTER TABLE users DROP CONSTRAINT constraint_name;` |
| টেবিল খালি করা | `TRUNCATE TABLE users;` |
| সিলেক্টিভ ডেটা দেখা | `SELECT col1, col2 FROM table;` |
| সর্টিং | `SELECT * FROM table ORDER BY column ASC/DESC;` |
| ডিসটিংক্ট ভ্যালু | `SELECT DISTINCT column FROM table;` |
| ফিল্টারিং | `SELECT * FROM table WHERE condition;` |
| NULL হ্যান্ডলিং | `SELECT COALESCE(column, 'default') FROM table;` |
| পেজিনেশন | `SELECT * FROM table LIMIT 5 OFFSET 10;` |

---
