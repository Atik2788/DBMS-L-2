
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

**পর্ব ২: রফিকের উন্নত কুয়েরি শেখার গল্প**

রফিক বেসিক PostgreSQL শেখার পর এবার কিছু অ্যাডভান্সড কুয়েরি শিখতে চাইল। সে তার `school` ডেটাবেজে ফিরে গেল এবং নতুন করে `students` টেবিল তৈরি করল:

```sql
CREATE TABLE students (
    student_id SERIAL PRIMARY KEY,
    first_name VARCHAR(50),
    last_name VARCHAR(50),
    email VARCHAR(100),
    age INT,
    country VARCHAR(50),
    grade CHAR(1),
    course VARCHAR(50),
    dob DATE,
    blood_group VARCHAR(3)
);
```

## 🔐 ১. ইউনিক কনস্ট্রেইন্ট যোগ করা

রফিক চাইল প্রতিটি ছাত্রের জন্য `person_id` এবং `last_name` ইউনিক হোক:

```sql
ALTER TABLE students
    ADD CONSTRAINT uniq_students_person_id UNIQUE(student_id);

ALTER TABLE students
    ADD CONSTRAINT uniq_students_last_name UNIQUE(last_name);
```
**আউটপুট:**
```
ALTER TABLE
ALTER TABLE
```

## 🗑️ ২. ইউনিক কনস্ট্রেইন্ট সরানো

কিছুদিন পর রফিক বুঝল `last_name` ইউনিক রাখা ভাল আইডিয়া না:

```sql
ALTER TABLE students
    DROP CONSTRAINT uniq_students_last_name;
```
**আউটপুট:**
```
ALTER TABLE
```

## 🧹 ৩. টেবিল খালি করা

রফিক টেবিলের সব ডাটা মুছে ফেলতে চাইল কিন্তু টেবিলটা রাখতে চাইল:

```sql
TRUNCATE TABLE students;
```
**আউটপুট:**
```
TRUNCATE TABLE
```

## 💥 ৪. টেবিল ডিলিট করা

রফিক পুরো টেবিলটাই ডিলিট করে দিল:

```sql
DROP TABLE students;
```
**আউটপুট:**
```
DROP TABLE
```

## 🔍 ৫. সিলেক্টেড ডাটা দেখা

রফিক নতুন করে `students2` টেবিল তৈরি করে কিছু ডাটা ইনসার্ট করল এবং নির্দিষ্ট কলাম দেখল:

```sql
SELECT student_id, first_name, email FROM students2;
```
**আউটপুট:**
```
 student_id | first_name |        email         
------------+------------+----------------------
          1 | Alice      | alice@example.com
          2 | Bob        | bob@example.com
          3 | Charlie    | charlie@example.com
```

## 🔼🔽 ৬. ডাটা সর্ট করা

রফিক নাম অনুসারে ডাটা সাজাল:

```sql
SELECT * FROM students2 ORDER BY first_name ASC;
```
**আউটপুট:**
```
 student_id | first_name | last_name |        email         | age | country | grade | course |    dob     | blood_group 
------------+------------+-----------+----------------------+-----+---------+-------+--------+------------+-------------
          1 | Alice      | Smith     | alice@example.com    |  20 | USA     | A     | Math   | 2003-05-15 | A+
          2 | Bob        | Johnson   | bob@example.com      |  21 | UK      | B     | Science| 2002-08-20 | B+
          3 | Charlie    | Williams  | charlie@example.com  |  19 | Canada  | A     | History| 2004-02-10 | AB+
```

```sql
SELECT * FROM students2 ORDER BY first_name DESC;
```
**আউটপুট:**
```
 student_id | first_name | last_name |        email         | age | country | grade | course |    dob     | blood_group 
------------+------------+-----------+----------------------+-----+---------+-------+--------+------------+-------------
          3 | Charlie    | Williams  | charlie@example.com  |  19 | Canada  | A     | History| 2004-02-10 | AB+
          2 | Bob        | Johnson   | bob@example.com      |  21 | UK      | B     | Science| 2002-08-20 | B+
          1 | Alice      | Smith     | alice@example.com    |  20 | USA     | A     | Math   | 2003-05-15 | A+
```

## 🌍 ৭. ইউনিক ভ্যালু দেখা

রফিক দেখতে চাইল কোন কোন দেশের ছাত্র আছে:

```sql
SELECT DISTINCT country FROM students2;
```
**আউটপুট:**
```
 country 
---------
 USA
 UK
 Canada
```

## 🔎 ৮. ফিল্টার করে ডাটা দেখা

রফিক শুধু USA-র ছাত্রদের দেখল:

```sql
SELECT * FROM students2 WHERE country = 'USA';
```
**আউটপুট:**
```
 student_id | first_name | last_name |      email       | age | country | grade | course |    dob     | blood_group 
------------+------------+-----------+------------------+-----+---------+-------+--------+------------+-------------
          1 | Alice      | Smith     | alice@example.com|  20 | USA     | A     | Math   | 2003-05-15 | A+
```

## 🎯 ৯. মাল্টিপল কন্ডিশন

রফিক A গ্রেডের এবং Math কোর্সের ছাত্রদের দেখল:

```sql
SELECT * FROM students2 WHERE grade = 'A' AND course='Math';
```
**আউটপুট:**
```
 student_id | first_name | last_name |      email       | age | country | grade | course |    dob     | blood_group 
------------+------------+-----------+------------------+-----+---------+-------+--------+------------+-------------
          1 | Alice      | Smith     | alice@example.com|  20 | USA     | A     | Math   | 2003-05-15 | A+
```

```sql
SELECT * FROM students2 WHERE grade = 'A' OR grade = 'B';
```
**আউটপুট:**
```
 student_id | first_name | last_name |        email         | age | country | grade | course |    dob     | blood_group 
------------+------------+-----------+----------------------+-----+---------+-------+--------+------------+-------------
          1 | Alice      | Smith     | alice@example.com    |  20 | USA     | A     | Math   | 2003-05-15 | A+
          2 | Bob        | Johnson   | bob@example.com      |  21 | UK      | B     | Science| 2002-08-20 | B+
          3 | Charlie    | Williams  | charlie@example.com  |  19 | Canada  | A     | History| 2004-02-10 | AB+
```

```sql
SELECT * FROM students2 WHERE (grade = 'A' OR grade = 'B') AND age=20;
```
**আউটপুট:**
```
 student_id | first_name | last_name |      email       | age | country | grade | course |    dob     | blood_group 
------------+------------+-----------+------------------+-----+---------+-------+--------+------------+-------------
          1 | Alice      | Smith     | alice@example.com|  20 | USA     | A     | Math   | 2003-05-15 | A+
```

## 🔠 ১০. আপারকেস কনভার্সন

রফিক নামগুলো বড় হাতের অক্ষরে দেখল:

```sql
SELECT upper(first_name), * FROM students2;
```
**আউটপুট:**
```
 upper | student_id | first_name | last_name |        email         | age | country | grade | course |    dob     | blood_group 
-------+------------+------------+-----------+----------------------+-----+---------+-------+--------+------------+-------------
 ALICE |          1 | Alice      | Smith     | alice@example.com    |  20 | USA     | A     | Math   | 2003-05-15 | A+
 BOB   |          2 | Bob        | Johnson   | bob@example.com      |  21 | UK      | B     | Science| 2002-08-20 | B+
 CHARLIE|          3 | Charlie    | Williams  | charlie@example.com  |  19 | Canada  | A     | History| 2004-02-10 | AB+
```

## � ১১. কলাম মার্জ করা

রফিক প্রথম নাম এবং শেষ নাম একসাথে দেখল:

```sql
SELECT concat(first_name,' ', last_name) FROM students2;
```
**আউটপুট:**
```
      concat       
-------------------
 Alice Smith
 Bob Johnson
 Charlie Williams
```

## 📏 ১২. ভ্যালুর দৈর্ঘ্য দেখা

রফিক নামের দৈর্ঘ্য দেখল:

```sql
SELECT length(first_name) FROM students2;
```
**আউটপুট:**
```
 length 
--------
      5
      3
      7
```

## 🧮 ১৩. গড় বয়স বের করা

রফিক ছাত্রদের গড় বয়স বের করল:

```sql
SELECT avg(age) FROM students2;
```
**আউটপুট:**
```
         avg         
---------------------
 20.0000000000000000
```

## 🔢 ১৪. রো কাউন্ট করা

রফিক টেবিলে কত রো আছে তা দেখল:

```sql
SELECT count(*) FROM students2;
```
**আউটপুট:**
```
 count 
-------
     3
```

## 🚫 ১৫. নাল ভ্যালু ফিল্টার

রফিক শুধু সেই ছাত্রদের দেখল যাদের ইমেইল আছে:

```sql
SELECT * FROM students2 WHERE email IS NOT NULL;
```
**আউটপুট:**
```
 student_id | first_name | last_name |        email         | age | country | grade | course |    dob     | blood_group 
------------+------------+-----------+----------------------+-----+---------+-------+--------+------------+-------------
          1 | Alice      | Smith     | alice@example.com    |  20 | USA     | A     | Math   | 2003-05-15 | A+
          2 | Bob        | Johnson   | bob@example.com      |  21 | UK      | B     | Science| 2002-08-20 | B+
          3 | Charlie    | Williams  | charlie@example.com  |  19 | Canada  | A     | History| 2004-02-10 | AB+
```

## 🔄 ১৬. নাল ভ্যালু রিপ্লেস

রফিক নাল ইমেইলগুলোকে ডিফল্ট মেসেজ দিয়ে রিপ্লেস করল:

```sql
SELECT COALESCE(email, 'email not provided') FROM students2;
```
**আউটপুট:**
```
       coalesce        
----------------------
 alice@example.com
 bob@example.com
 charlie@example.com
```

```sql
SELECT COALESCE(email, 'email not provided') as "Email", first_name FROM students2;
```
**আউটপুট:**
```
        Email        | first_name 
---------------------+------------
 alice@example.com   | Alice
 bob@example.com     | Bob
 charlie@example.com | Charlie
```

## 🌐 ১৭. IN অপারেটর

রফিক USA এবং UK-র ছাত্রদের দেখল:

```sql
SELECT * FROM students2 WHERE country IN ('USA', 'UK');
```
**আউটপুট:**
```
 student_id | first_name | last_name |        email         | age | country | grade | course |    dob     | blood_group 
------------+------------+-----------+----------------------+-----+---------+-------+--------+------------+-------------
          1 | Alice      | Smith     | alice@example.com    |  20 | USA     | A     | Math   | 2003-05-15 | A+
          2 | Bob        | Johnson   | bob@example.com      |  21 | UK      | B     | Science| 2002-08-20 | B+
```

## 📅 ১৮. BETWEEN অপারেটর

রফিক ১৯ থেকে ২২ বছর বয়সী ছাত্রদের দেখল:

```sql
SELECT * FROM students2 WHERE age BETWEEN 19 AND 22;
```
**আউটপুট:**
```
 student_id | first_name | last_name |        email         | age | country | grade | course |    dob     | blood_group 
------------+------------+-----------+----------------------+-----+---------+-------+--------+------------+-------------
          1 | Alice      | Smith     | alice@example.com    |  20 | USA     | A     | Math   | 2003-05-15 | A+
          2 | Bob        | Johnson   | bob@example.com      |  21 | UK      | B     | Science| 2002-08-20 | B+
          3 | Charlie    | Williams  | charlie@example.com  |  19 | Canada  | A     | History| 2004-02-10 | AB+
```

## 🔍 ১৯. LIKE অপারেটর

রফিক 'am' দিয়ে শেষ হওয়া নামগুলো খুঁজল:

```sql
SELECT * FROM students2 WHERE first_name LIKE '%am';
```
**আউটপুট:**
```
 student_id | first_name | last_name | email | age | country | grade | course | dob | blood_group 
------------+------------+-----------+-------+-----+---------+-------+--------+-----+-------------
(0 rows)
```

```sql
SELECT * FROM students2 WHERE first_name LIKE 'A%';
```
**আউটপুট:**
```
 student_id | first_name | last_name |      email       | age | country | grade | course |    dob     | blood_group 
------------+------------+-----------+------------------+-----+---------+-------+--------+------------+-------------
          1 | Alice      | Smith     | alice@example.com|  20 | USA     | A     | Math   | 2003-05-15 | A+
```

## 📄 ২০. পেজিনেশন

রফিক লিমিট এবং অফসেট ব্যবহার করে পেজিনেশন ইমপ্লিমেন্ট করল:

```sql
SELECT * FROM students2 LIMIT 2 OFFSET 0;
```
**আউটপুট:**
```
 student_id | first_name | last_name |        email         | age | country | grade | course |    dob     | blood_group 
------------+------------+-----------+----------------------+-----+---------+-------+--------+------------+-------------
          1 | Alice      | Smith     | alice@example.com    |  20 | USA     | A     | Math   | 2003-05-15 | A+
          2 | Bob        | Johnson   | bob@example.com      |  21 | UK      | B     | Science| 2002-08-20 | B+
```

```sql
SELECT * FROM students2 LIMIT 2 OFFSET 2;
```
**আউটপুট:**
```
 student_id | first_name | last_name |        email         | age | country | grade | course |    dob     | blood_group 
------------+------------+-----------+----------------------+-----+---------+-------+--------+------------+-------------
          3 | Charlie    | Williams  | charlie@example.com  |  19 | Canada  | A     | History| 2004-02-10 | AB+
```

# 📊 PostgreSQL কমান্ড রেফারেন্স টেবিল

নিচে রফিকের শেখা সকল PostgreSQL কমান্ডের একটি সংক্ষিপ্ত রেফারেন্স টেবিল দেওয়া হলো:

| কাজ                                      | কমান্ড উদাহরণ                                                                 |
|------------------------------------------|-------------------------------------------------------------------------------|
| ইউনিক কনস্ট্রেইন্ট যোগ করা               | `ALTER TABLE users ADD CONSTRAINT uniq_users_person_id UNIQUE(person_id);`    |
| ইউনিক কনস্ট্রেইন্ট সরানো                 | `ALTER TABLE users DROP CONSTRAINT uniq_users_person_id;`                     |
| টেবিলের সকল ডাটা মুছে ফেলা               | `TRUNCATE TABLE users;`                                                       |
| টেবিল ডিলিট করা                          | `DROP TABLE users;`                                                           |
| সিলেক্টেড কলাম দেখা                      | `SELECT student_id, first_name, email FROM students;`                          |
| ডাটা সর্ট করা (ASC/DESC)                 | `SELECT * FROM students ORDER BY first_name ASC;`                             |
|                                         | `SELECT * FROM students ORDER BY first_name DESC;`                            |
| ইউনিক ভ্যালু দেখা                        | `SELECT DISTINCT country FROM students;`                                      |
| ফিল্টার করে ডাটা দেখা                    | `SELECT * FROM students WHERE country = 'USA';`                              |
| মাল্টিপল কন্ডিশন ব্যবহার করে ফিল্টার     | `SELECT * FROM students WHERE grade = 'A' AND course='Math';`                |
|                                         | `SELECT * FROM students WHERE grade = 'A' OR grade = 'B';`                   |
|                                         | `SELECT * FROM students WHERE (grade = 'A' OR grade = 'B') AND age=20;`      |
| আপারকেস কনভার্সন                         | `SELECT upper(first_name), * FROM students;`                                 |
| কলাম মার্জ করা                           | `SELECT concat(first_name,' ', last_name) FROM students;`                    |
| ভ্যালুর দৈর্ঘ্য দেখা                     | `SELECT length(first_name) FROM students;`                                   |
| গড় বয়স বের করা                          | `SELECT avg(age) FROM students;`                                            |
| রো কাউন্ট করা                           | `SELECT count(*) FROM students;`                                            |
| নাল ভ্যালু ফিল্টার                      | `SELECT * FROM students WHERE email IS NOT NULL;`                           |
| নাল ভ্যালু রিপ্লেস                      | `SELECT COALESCE(email, 'email not provided') FROM students;`               |
|                                         | `SELECT COALESCE(email, 'email not provided') as "Email" FROM students;`    |
| IN অপারেটর ব্যবহার                       | `SELECT * FROM students WHERE country IN ('USA', 'UK');`                    |
| BETWEEN অপারেটর ব্যবহার                  | `SELECT * FROM students WHERE age BETWEEN 19 AND 22;`                       |
| LIKE অপারেটর ব্যবহার                     | `SELECT * FROM students WHERE first_name LIKE 'A%';`                        |
| ILIKE অপারেটর ব্যবহার (case insensitive) | `SELECT * FROM students WHERE first_name ILIKE 'a%';`                       |
| লিমিট ও অফসেট ব্যবহার                    | `SELECT * FROM students LIMIT 5 OFFSET 10;`                                 |
| পেজিনেশন ইমপ্লিমেন্টেশন                  | `SELECT * FROM students LIMIT 5 OFFSET 5*0;` (পেজ ১)                       |
|                                         | `SELECT * FROM students LIMIT 5 OFFSET 5*1;` (পেজ ২)                       |
| ডাটা ডিলিট করা                           | `DELETE FROM students WHERE grade = 'B';`                                   |
|                                         | `DELETE FROM students WHERE grade = 'A' AND blood_group = 'O+';`            |
| ডাটা আপডেট করা                           | `UPDATE students SET age = 20 WHERE student_id = 1;`                        |

এই টেবিলটি PostgreSQL-এর সবচেয়ে ব্যবহৃত কমান্ডগুলোর একটি দ্রুত রেফারেন্স গাইড হিসেবে ব্যবহার করা যেতে পারে। প্রতিটি কমান্ডের সাথে বাস্তব উদাহরণ দেওয়া হয়েছে যাতে বোঝা সহজ হয়।

## 🎉 উপসংহার

রফিক PostgreSQL-এর আরও অনেক শক্তিশালী ফিচার শিখে ফেলল। সে এখন ডাটাবেজে ডাটা যোগ করা, দেখা, আপডেট করা, ডিলিট করা ছাড়াও আরও অনেক জটিল কুয়েরি করতে পারে!



অসাধারণ অনুরোধ! নিচে **একটি সুন্দর গল্প** আকারে তুলে ধরা হলো — যেখানে **Rafik** বাস্তব সমস্যার মুখোমুখি হয়ে PostgreSQL দিয়ে ধাপে ধাপে তার সমাধান বের করে। গল্পের সাথে প্রত্যেকটি SQL কমান্ড ও ফলাফলও রয়েছে। এটাই হবে **Part 3: Rafik এর সময়, বয়স, এবং সম্পর্কের গল্প।**

---

# 📘 Part 3: সময়, বয়স, এবং সম্পর্ক – Rafik এর ডাটাবেজ অভিযাত্রা

## 🧔‍♂️ Rafik আবার ফিরল ডাটাবেজে...

ছুটির দিনের সকালে Rafik তার কফির কাপ হাতে নিয়ে বসলো কম্পিউটারে। আজ সে ভাবল, **সময়**, **বয়স**, আর **লোকেদের সম্পর্ক** নিয়ে কাজ করবে।

### ⏰ সময় জানার আগ্রহ...

Rafik ভাবল, “এই মুহূর্তে ডাটাবেজ কী সময় বলে?”

```sql
SELECT now();
```

🖥️ Output:

```
2025-05-22 10:45:00.123456+06
```

সে খুশি হয়ে বলল, “ওয়াও! PostgreSQL সময় জানে!”

---

## 📅 টাইমজোনের খেলা

Rafik এবার একটা টেবিল তৈরি করল, যেখানে থাকবে সময় দুইভাবে— টাইমজোন সহ ও ছাড়া।

```sql
CREATE TABLE timez (
  ts TIMESTAMP WITHOUT TIME ZONE,
  tsz TIMESTAMP WITH TIME ZONE
);
```

```sql
INSERT INTO timez VALUES('2024-01-12 10:45:00', '2024-01-12 10:45:00');
SELECT * FROM timez;
```

🖥️ Output:

```
        ts         |         tsz
------------------+-----------------------
2024-01-12 10:45:00 | 2024-01-12 10:45:00+06
```

Rafik মুচকি হেসে বলল, “এই হইলো টাইম ট্রাভেলার টেবিল!”

---

## 🧓 Rafik এর বয়স বের করল!

Rafik তার জন্মদিন মনে করে টাইপ করল:

```sql
SELECT age(CURRENT_DATE, '2000-09-14');
```

🖥️ Output:

```
24 years 8 mons 8 days
```

সে কিছুক্ষণ চুপচাপ, তারপর বলল,
“বাহ! এখন বুঝি কেন আমার পিঠে ব্যথা!”

---

## 👨‍🎓 Students2 টেবিলের সবার বয়স বের করি

Rafik একটা টেবিল বানিয়েছিল আগেই যেখানে বিভিন্ন ছাত্রদের জন্মতারিখ ছিল। আজ সে চেক করল তাদের বয়স।

```sql
SELECT *, age(CURRENT_DATE, dob) FROM students2;
```

🖥️ Output:

```
id | name  | country | dob        | age
---+--------+---------+------------+------------------------
 1 | Asif   | BD      | 2002-01-12 | 23 years 4 mons 10 days
 2 | Reza   | USA     | 1995-05-03 | 30 years 0 mons 19 days
...
```

Rafik হাসল, “Reza ভাইয়ের দাড়ি দেখেই বুঝছিলাম বয়স বেশি!”

---

## 📊 গ্রুপ করে বিশ্লেষণ

Rafik এবার জানার চেষ্টা করল কোন দেশের কয়জন ছাত্র আছে।

```sql
SELECT country, count(*) FROM students2 GROUP BY country;
```

🖥️ Output:

```
country | count
--------+-------
BD      | 3
USA     | 2
UK      | 1
```

“ওয়াও! বাংলাদেশই সেরা!” – বলল Rafik।

তারপর বয়সের গড়ও বের করল:

```sql
SELECT country, avg(age), sum(age) FROM students2 GROUP BY country;
```

---

## 🤝 বন্ধুত্বের সম্পর্ক: JOIN

Rafik এবার তার বন্ধুদের জন্য user ও post নামের দুইটি টেবিল তৈরি করল।

```sql
CREATE TABLE "user"(
  id SERIAL PRIMARY KEY,
  user_name VARCHAR(25) NOT NULL
);

CREATE TABLE post(
  id SERIAL PRIMARY KEY,
  title TEXT NOT NULL,
  user_id INTEGER REFERENCES "user"(id) ON DELETE SET DEFAULT DEFAULT 2
);
```

### বন্ধুরা কে কী লিখেছে?

```sql
INSERT INTO "user"(user_name) VALUES
('akash'), ('batas'), ('sagor'), ('nodi');

INSERT INTO post (title, user_id) VALUES
('Enjoying a sunny day with Akash! ☀️', 2),
('Batash just shared an amazing recipe! 🍲', 1),
('Exploring adventures with Sagor.🌟', 4),
('Nodi''s wisdom always leaves me inspired. 📚', 4);
```

```sql
SELECT title, user_name FROM post
JOIN "user" ON post.user_id = "user".id;
```

🖥️ Output:

```
Enjoying a sunny day with Akash! ☀️        | akash
Batash just shared an amazing recipe! 🍲    | batas
Exploring adventures with Sagor.🌟          | sagor
Nodi's wisdom always leaves me inspired. 📚 | nodi
```

Rafik বলল, “বন্ধুত্বই আসল সম্পদ।”

---

## 🔄 JOIN এর মহাযুদ্ধ!

```sql
-- INNER JOIN
SELECT * FROM post JOIN "user" ON post.user_id = "user".id;

-- LEFT JOIN
SELECT * FROM post LEFT JOIN "user" ON post.user_id = "user".id;

-- RIGHT JOIN
SELECT * FROM post RIGHT JOIN "user" ON post.user_id = "user".id;

-- FULL JOIN
SELECT * FROM post FULL JOIN "user" ON post.user_id = "user".id;
```

Rafik অবাক হয়ে বলল,
“JOIN মানে শুধু মিল নয়, সম্পর্কের গভীরতা!”

---

## 🏢 অফিসে কাজ: Natural ও Cross Join

শেষে Rafik নিজের অফিসের স্টাফদের সম্পর্ক বিশ্লেষণ করল।

```sql
CREATE TABLE employes (
  emp_id INT,
  emp_name VARCHAR(50),
  dept_id INT
);

CREATE TABLE depertments (
  dept_id INT,
  dept_name VARCHAR(50)
);

INSERT INTO employes VALUES (1, 'John Doe', 101), (2, 'John Week', 102);
INSERT INTO depertments VALUES (101, 'Human Resors'), (102, 'Marketing');

-- NATURAL JOIN
SELECT * FROM employes NATURAL JOIN depertments;

-- CROSS JOIN
SELECT * FROM employes CROSS JOIN depertments;
```

Rafik হেসে বলল,
“Natural Join মানে আত্মীয়তা,
আর Cross Join মানে হুট করে সবাই সবার আত্মীয়!”

---

## ✅ সমাপ্তি

আজকের দিনে Rafik শিখল—

✅ কিভাবে সময় ও বয়স কাজ করে
✅ কিভাবে GROUP BY দিয়ে বিশ্লেষণ করতে হয়
✅ কিভাবে বিভিন্ন JOIN দিয়ে সম্পর্ক বোঝা যায়

সে মনে মনে বলল,

> “ডাটাবেজ শুধু ডাটা নয়, এটা একটা গল্প — মানুষের, সম্পর্কের, আর সময়ের!”

---
