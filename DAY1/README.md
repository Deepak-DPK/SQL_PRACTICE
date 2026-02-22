# DAY 1: SQL Basics with Hospital Data

**Welcome to Day 1!** 👋 You will run beginner SQL on real sample data.

⏱️ **Time to Complete:** 40–55 minutes

---

## 🎯 What You'll Learn Today

- Read rows
- Filter rows
- Update missing values
- Count matching rows
- Join two tables

---

## 📚 The Big Ideas

### **Idea 1: A table is a sheet**
A table stores data in rows and columns.
Real example: hospital patient records.

### **Idea 2: SQL asks questions**
`SELECT` pulls the data you ask for.
Real example: show only male patients.

### **Idea 3: WHERE narrows results**
`WHERE` keeps rows that match your condition.
Real example: birth year is 2010.

### **Idea 4: JOIN combines tables**
`JOIN` connects related data across tables.
Real example: patient + province name.

---

## 🛠️ Do You Have Everything You Need?

- MySQL or MariaDB
- `DAY1` folder files
- Optional SQL GUI

```bash
mysql --version
```

---

## 📂 Files in Learning Order

| Step | File | What’s New | Goal |
|---|---|---|---|
| 0 | [db_schema.sql](db_schema.sql) | Creates DB and tables | Setup |
| 1 | [seed_data.sql](seed_data.sql) | Inserts sample rows | Data ready |
| 2 | [q01_male.sql](q01_male.sql) | Basic `WHERE` filter | First result |
| 3 | [q02_fill_allergies.sql](q02_fill_allergies.sql) | `UPDATE` null allergy values | Data cleanup |
| 4 | [q03_no_allergies.sql](q03_no_allergies.sql) | Find rows with null values | Null practice |
| 5 | [q04_name_c.sql](q04_name_c.sql) | Text starts-with filter | String filter |
| 6 | [q05_weight_range.sql](q05_weight_range.sql) | `BETWEEN` number range | Range filter |
| 7 | [q06_full_name.sql](q06_full_name.sql) | Merge first + last name | Derived column |
| 8 | [q07_patient_province.sql](q07_patient_province.sql) | Join patient to province | Join practice |
| 9 | [q08_birth_2010_count.sql](q08_birth_2010_count.sql) | Count 2010 births | Aggregate |
| 10 | [q09_tallest.sql](q09_tallest.sql) | Highest height record | Sorting/max |
| 11 | [q10_id_list.sql](q10_id_list.sql) | Match IDs with `IN` | Multi-value filter |

Compare q01 → q10 to see the progression.

---

## 🚀 How to Run

**Interactive (recommended):**

```bash
cd DAY1
mysql -u root -p
SOURCE db_schema.sql;
SOURCE seed_data.sql;
SOURCE q01_male.sql;
```

**Single command (setup only):**

```bash
cd DAY1 && mysql -u root -p < db_schema.sql
```

**Single command (setup + data):**

```bash
cd DAY1 && mysql -u root -p -e "SOURCE db_schema.sql; SOURCE seed_data.sql;"
```

Do the same for `q02...q10` by changing the file name.

---

## ⚠️ Oops! Common Mistakes & Fixes

Don’t worry—everyone makes these.

| Error Message | What It Means | How to Fix |
|---|---|---|
| `No database selected` | DB is not active | Run `USE HospitalDB;` |
| `Table 'patients' doesn't exist` | Setup not loaded | Run `SOURCE db_schema.sql;` then `SOURCE seed_data.sql;` |
| `You have an error in your SQL syntax` | Typo in SQL | Check commas, quotes, and `;` |
| `Unknown column` | Column name is wrong | Verify names in [db_schema.sql](db_schema.sql) |
| `No rows returned` | Filter too strict | Test query without `WHERE` first |
| `FUNCTION YEAR does not exist` | SQL engine mismatch | Use date range in [q08_birth_2010_count.sql](q08_birth_2010_count.sql) |

---

## 💡 Example Runs

```text
SQL> SOURCE q01_male.sql;
Charles | Maroni | M
Stevens | Sims   | M
Leo     | Nadal  | M
```

```text
SQL> SOURCE q05_weight_range.sql;
Charles | Maroni
John    | Doe
John    | Maroni
Fatima  | Zahra
```

```text
SQL> SOURCE q07_patient_province.sql;
Charles | Maroni | Ontario
Sarah   | Smith  | Ontario
...
```

```text
SQL> SOURCE q10_id_list.sql;
5 rows returned
```

---

## 🧠 Key Things to Remember as You Query

### **Pick needed columns**
```sql
SELECT first_name, last_name
FROM patients;
```
**Why it matters:** Cleaner output is easier to verify.

### **Filter with WHERE**
```sql
SELECT first_name, last_name
FROM patients
WHERE gender = 'F';
```
**Why it matters:** You control result size.

### **Count with COUNT**
```sql
SELECT COUNT(*) AS total_patients
FROM patients
WHERE birth_date BETWEEN '2010-01-01' AND '2010-12-31';
```
**Why it matters:** Useful for reports and dashboards.

### **Combine tables with JOIN**
```sql
SELECT p.first_name, p.last_name, pn.province_name
FROM patients p
JOIN province_names pn ON p.province_id = pn.province_id;
```
**Why it matters:** Real apps store related data separately.

---

## 🔤 Key Terms

- **Database** — Group of related tables.
- **Table** — Rows and columns.
- **Row** — One record.
- **Column** — One data field.
- **NULL** — Missing value.
- **WHERE** — Row filter rule.
- **JOIN** — Combines table data.
- **COUNT** — Number of rows.

---

## 🌍 Real-World Applications

| Concept | Where You See It |
|---|---|
| Filtering with `WHERE` | App search filters |
| Updating with `UPDATE` | Correcting profile fields |
| Counting with `COUNT` | Analytics totals |
| Joining tables | Orders with customer names |
| `IN (...)` filtering | Selected user lists |

---

## 🎯 Next Steps & Practice

- Add city condition
- Sort by name
- Count by province
- Try another join

## 📖 How to Learn Faster

1. Read one file
2. Guess the output
3. Run the SQL
4. Check the result
5. Change one condition
6. Run again
7. Explain out loud

---

## 💬 Still Confused? Here’s the Simplest Explanation

- Build tables first
- Load sample data
- Run one query file
- Read the output
- Repeat for next file

You’ve got this.

---

## ✅ You’re Done When...

- [ ] You created `HospitalDB`
- [ ] You loaded schema and data
- [ ] You ran `q01` to `q10`
- [ ] You can explain `WHERE`
- [ ] You can explain `JOIN`

**Checked all boxes? You’re ready for Day 2!** 🎉

---

**Ready? Open [q01_male.sql](q01_male.sql) and start.** 🚀
