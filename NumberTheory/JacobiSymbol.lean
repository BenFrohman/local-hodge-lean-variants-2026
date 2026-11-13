/-
Copyright (c) 2026 Benjamin Stanley Frohman (@BenFrohman). Released under Apache-2.0.
Authors: Benjamin Stanley Frohman (@BenFrohman)
-/
import Mathlib.NumberTheory.LegendreSymbol.JacobiSymbol
import Mathlib.NumberTheory.LegendreSymbol.QuadraticReciprocity

/-!
# Jacobi symbol evaluator (clean interface)

Self-contained interface to the Mathlib Jacobi symbol with an explicit evaluation note.
The Euclidean-style reduction is already implemented in Mathlib via `norm_num` and the reciprocity law.
-/

namespace NumberTheory
namespace Jacobi

open Mathlib

/-- Jacobi symbol. -/
def J (a : ℤ) (n : ℕ) : ℤ :=
  jacobiSym a n

theorem reciprocity (a b : ℕ) (ha : Odd a) (hb : Odd b) :
    J a b = (-1) ^ (a / 2 * (b / 2)) * J b a :=
  jacobiSym.quadratic_reciprocity ha hb

/-- Evaluation reduces via reciprocity and reduction mod the bottom argument. -/
theorem eval_mod (a : ℤ) (n : ℕ) :
    J a n = J (a % n) n :=
  jacobiSym.mod_left

end Jacobi
end NumberTheory
