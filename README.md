# Shell Lab Project

This repository contains a collection of shell scripts demonstrating various Linux/Unix shell programming concepts.

## List of Programs


| Script Name | Aim | Key Concepts |
|-------------|-----|--------------|
| `program1.sh` | **Area & Circumference of Circle** | Area & circumference calculation, `bc` |
| `program2.sh` | **Arithmetic Operations Menu** | `case` statement, `while` loop, arithmetic |
| `program3.sh` | **Largest of Three Numbers** | Conditional `if-else`, numerical comparison |
| `program4.sh` | **Mean & Variance** | Statistical calculations, `bc` with `scale`, variance logic |
| `program5.sh` | **Reverse a Number** | While loop, modulo `%`, integer division `/` |
| `program6.sh` | **Print Prime Numbers** | Nested loops, divisibility check using modulo |
| `program7.sh` | **Fibonacci Series** | Iterative number generation, variable swapping |
| `program8.sh` | **Check Armstrong Number** | Cubing digits, accumulation logic |
| `program9.sh` | **Check Palindrome** | String reversal using `rev`, string comparison |
| `program10.sh`| **Count Lines, Words, Characters** | `wc` command, input redirection, file operations |
| `program11.sh`| **Calculate Factorial** | Iterative multiplication, `bc` for large numbers |
| `program12.sh`| **Calculate Gross Salary** | Percentage calculations, floating-point arithmetic |
| `program13.sh`| **Calculate Average (CLI)** | Command-line arguments `$#`, loop, arithmetic |
| `program14.sh`| **Display Time-based Greeting** | `date` command usage, time-based conditionals |
| `program15.sh`| **Count Vowels & Consonants** | String manipulation with `sed`, regex |

## Usage
To run any script, make sure it has execution permissions and run it with `./script_name.sh` or `bash script_name.sh`.

Example:
```bash
chmod +x program1.sh
./program1.sh
```

## Comparisons 
Previously, there were two versions of these scripts (`Current-ig` and `Previous-ig`). The `Previous-ig` versions were identified as superior due to:
- Correct logic (fixed bugs like the Factorial calculation)
- Modern syntax (e.g., `$((...))` instead of `expr`)
- Better formatting and robustness
- Comprehensive comments added to explain code logic
- **Standardized Structure**: Each script now includes a Heading, Aim, and a sample Output section for better documentation.

All scripts in the root directory are now the improved, commented versions.
