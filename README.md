# steepest-descent-optimization-lab3

# Optimization Techniques – 3rd Laboratory Assignment

## Overview
This repository contains the implementation of optimization methods for solving constrained and unconstrained minimization problems in MATLAB. The work is based on the **Steepest Descent Method with Projection**, as studied in the 3rd laboratory assignment for the course "Optimization Techniques".

> 📘 **Note:** The official report is written in **Greek**.

---

## 🧪 What Has Been Implemented

### Problem 1 – Steepest Descent Method (Unconstrained)

Studied the convergence behavior for different learning rate (`γ`) values:

- `thema1i.m`: γ = 0.1 → converges in 62 iterations ✅
- `thema1ii.m`: γ = 0.3 → converges faster in 30 iterations ✅
- `thema1iii.m`: γ = 3 → diverges ❌
- `thema1iv.m`: γ = 5 → diverges ❌

### Problem 2 – Steepest Descent with Projection (γ = 0.1, s = 5)

- Projection constraints applied on `x1 ∈ [-10, 5]`, `x2 ∈ [-8, 12]`
- Observed oscillation and lack of convergence (γ * s = 0.5 > 1/3)

### Problem 3 – Steepest Descent with Projection (γ = 0.1, s = 15)

- Despite γ * s = 1.5 (unstable), the method eventually converged after 1216 iterations.
- Showed reduced oscillation compared to Problem 2.

### Problem 4 – Steepest Descent with Projection (γ = 0.2, s = 0.1)

- γ * s = 0.02, within the stable range.
- Method converged successfully after 449 iterations.

---

## 📂 Files

- `thema1i.m` to `thema1iv.m`: Steepest Descent with various γ values.
- `thema2.m`, `thema3.m`, `thema4.m`: Steepest Descent with projection constraints.
- `Τεχνικές Βελτιστοποίησης 3.pdf`: Lab report (in Greek).

---

## 🧰 Tools Used

- Language: MATLAB
- Plotting: 2D line plots of objective value vs iterations
- Symbolic math: `syms`, `diff`, `gradient`

---

## 👥 Author

- 👩‍💻 Angeliki Strataki (AEM: 10523)

---

## License

This project is intended for academic and educational use only.
