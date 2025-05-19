
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
