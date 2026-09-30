# Assignment: Python — Working with Dictionaries

Complete a Python script that reads information from a nested dictionary, adds a new sales entry, and uses a `for` loop to print an employee salary report.

## Get Started

Follow the shared Canvas instructions to accept access to your private assignment repository and clone it. Open the existing **`main.py`** file.

The starter defines a dictionary named `my_company`. Keep its name, structure, and existing data unchanged. Add your work below `# --- Your code below ---`; add the new sales entry through your code rather than editing the starter dictionary directly.

## What to Build

Complete these five tasks in order:

1. **Print the company name.** Read the value stored under the top-level `name` key. Start the output line with `Company name: `.
2. **Print the 2024 sales.** Read the value under the `"2024"` key in the nested `sales` dictionary. Start the line with `Sales 2024: ` and print the number without a dollar sign or thousands separators.
3. **Print the Sales team members.** Print the heading `Sales team:`, then use a `for` loop over `my_company["staff"]["Sales"]` to print each name on its own line, in the list's existing order.
4. **Add the 2025 sales entry.** In the nested `sales` dictionary, add the string key `"2025"` with the integer value `2320110`. This records $2,320,110 in sales for 2025; do not add that amount to the 2024 value or replace an existing year.
5. **Print an employee salary report.** Print the heading `Employee salaries:`, then use a `for` loop with `my_company["salaries"].items()` to print each employee's name and annual salary on a separate line in the form `Employee name: $amount`.

The provided `salaries` dictionary maps each employee's name to an annual salary in whole dollars. Print all eight employees exactly once; any employee order is acceptable. Include the dollar sign, but do not add thousands separators or decimal places. These are example salaries for this assignment.

Task 4 updates the nested `sales` dictionary; no separate output line for 2025 is required. You do not need to print the entire company dictionary.

## Expected Output

Match the labels, capitalization, punctuation, and values shown below. Include a space after a colon when a value follows on the same line. The `Sales team:` and `Employee salaries:` headings each go on their own line. Blank lines between sections or employee lines are optional.

```text
Company name: Danco Inc
Sales 2024: 1500356
Sales team:
Jon Johnson
Angie Angel
Edward Scissors

Employee salaries:
Martha Martin: $120000
Bob, Roberts: $115000
Maggie Moo: $110000
Jon Johnson: $65000
Angie Angel: $70000
Edward Scissors: $68000
Heather Jobs: $95000
Bradley Thomas: $90000
```

Read the values from the dictionary rather than hard-coding the displayed answers. The spelling `Bob, Roberts` is part of the supplied data; leave it unchanged.

## Hints

- A top-level key belongs directly to `my_company`. The `staff`, `sales`, and `salaries` values are themselves dictionaries.
- Dictionary keys are case-sensitive: `Sales` identifies a team, while `sales` identifies the yearly sales dictionary.
- Year keys are strings, such as `"2024"` and `"2025"`; sales amounts are integers.
- Use dictionary access to retrieve nested values and assignment to add a new key/value pair.
- Looping over the Sales team list gives you one name at a time. Print that name inside the loop; you may choose your own loop-variable name.
- For the salary report, `.items()` provides an employee name (the key) and salary (the value) together for each iteration. You may choose your own two loop-variable names.

## Run and Check Locally

From your repository folder, run:

```bash
python3 main.py
```

On Windows, use `python` instead of `python3` if needed.

Compare your output with the example. Confirm that all three Sales team members appear and that the salary report includes each of the eight employees exactly once with the correct amount. Check that your code adds the 2025 sales entry without changing existing company data.

## Submission and Autograding

Follow the shared Canvas instructions to commit and push **`main.py`** to `main` before the Canvas deadline. This assignment does not require an execution-record file.

For this assignment, select the **Autograding** workflow, open the **autograding** job, and expand **Autograding Reporter** to see your score. Fix failing checks, run your program locally again, and commit and push your updates. No separate Canvas file upload is required.

## Grading (100 Points)

| Criterion | Points |
| --- | ---: |
| Prints the company name and 2024 sales, and loops over the Sales team list to print its members | 25 |
| Prints all employee names and annual salaries in the required format | 25 |
| Uses a `for` loop with `.items()` on the nested `salaries` dictionary | 25 |
| Adds the 2025 sales entry with the correct key and value | 15 |
| Preserves the original company data, including 2023 and 2024 sales | 10 |
| **Total** | **100** |
