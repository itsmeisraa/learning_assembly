# Assembly Language - TP Exercises 🎓
This repository contains my solutions for the Assembly Language (TP) exercises at **ESTIN**. 

## 🛠️ Environment & Tools
* **Architecture:** x86_64
* **Assembler:** NASM
* **Linker:** ld (GNU Linker)
* **Platform:** Linux / Windows (WSL)

## 📂 Repository Structure
The exercises are organized by TP number:
* `TP01/`: Basics, registers, and moving data (`MOV`).
* `TP02/`: Arithmetic operations (`ADD`, `SUB`, `MUL`, `DIV`).
* `TP03/`: Logical operations and Bit shifting.
* `TP04/`: Loops (`LOOP`) and Conditionals (`CMP`, `JMP`).
* `TP05/`: The Stack and Procedures.

## 🚀 How to Build and Run
To run any exercise (e.g., `exercise1.asm`), use the following commands in your terminal:

```bash
# 1. Assemble (Output: object file)
nasm -f elf64 exercise1.asm -o exercise1.o

# 2. Link (Output: executable)
ld exercise1.o -o exercise1

# 3. Execute
./exercise1