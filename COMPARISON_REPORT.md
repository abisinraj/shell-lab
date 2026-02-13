# Output Comparison Report: Current-ig vs Previous-ig

## Summary
After running identical test inputs on both folders, **Previous-ig has fewer errors and produces more correct outputs**.

---

## Critical Bug Found

### TEST: Factorial Calculation (Input: 5)

**Current-ig/prg8.sh:**
```
Factorial of the number :
totel of factorial is 720
```
❌ **INCORRECT** - 5! should be 120, not 720 (this is actually 6!)

**Previous-ig/program8.sh:**
```
Factorial of the number?
Total of factorial is 120
```
✅ **CORRECT** - 5! = 120

**Root Cause:** In `prg8.sh`, the counter is incremented BEFORE multiplication:
```bash
counter=`expr $counter + 1`
ans=`expr $ans \* $counter`
```
This causes it to calculate (n+1)! instead of n!

---

## Other Test Results

### TEST: Circle Area & Circumference (Input: radius=5)

**Current-ig/prg8.sh:**
```
area of the circle is  78.50
circumference of the circle is 31.40
```
✅ Correct (but formatting inconsistent)

**Previous-ig/program1.sh:**
```
area of the circle is: 78.50
circumference of the circle is: 31.40
```
✅ Correct (better formatting with colons)

---

### TEST: Largest of Three Numbers (Input: 10 25 15)

**Current-ig/prg3.sh:**
```
Largest of 10,25,15 is 25
```
✅ Correct (but spacing inconsistent)

**Previous-ig/program3.sh:**
```
Largest of 10, 25, 15 is 25
```
✅ Correct (better formatting with spaces after commas)

---

### TEST: Reverse Number (Input: 12345)

**Current-ig/prg5.sh:**
```
Reverse number of entered digit is 54321
```
✅ Correct

**Previous-ig/program5.sh:**
```
Reverse of the number is 54321
```
✅ Correct (cleaner wording)

---

### TEST: Armstrong Number Check (Input: 153)

**Current-ig/prg7.sh:**
```
number is armstrong
```
✅ Correct (but inconsistent capitalization)

**Previous-ig/program7.sh:**
```
Number is Armstrong
```
✅ Correct (proper capitalization)

---

### TEST: String/Number Analysis

**Current-ig/prg15.sh** (String analysis - Input: "Hello"):
```
5 characters
2 vowels
3 consonants
```
✅ Correct for its purpose

**Previous-ig/program15.sh** (Even/Odd check - Input: 42):
```
42 is even.
```
✅ Correct for its purpose

*Note: These are different programs with different purposes*

---

## Quality Comparison

| Aspect | Current-ig | Previous-ig |
|--------|-----------|-------------|
| **Correctness** | 1 critical bug (factorial) | All outputs correct |
| **Code Style** | Uses deprecated `expr` and backticks | Modern `$((...))` syntax |
| **Output Formatting** | Inconsistent spacing, typos ("totel") | Consistent, professional |
| **Capitalization** | Inconsistent | Proper capitalization |
| **Robustness** | Fragile `wc` parsing | Robust input redirection |

---

## Conclusion

**Previous-ig is significantly better:**
1. ✅ **No bugs** - All outputs are mathematically correct
2. ✅ **Better code quality** - Modern syntax, more maintainable
3. ✅ **Professional output** - Consistent formatting and capitalization
4. ✅ **More robust** - Better error handling and parsing

**Current-ig has:**
1. ❌ **Critical factorial bug** - Produces wrong results
2. ❌ **Deprecated syntax** - Uses old `expr` and backticks
3. ❌ **Typos** - "totel" instead of "total"
4. ❌ **Inconsistent formatting** - Mixed capitalization and spacing

**Recommendation: Use Previous-ig for production/submission.**
