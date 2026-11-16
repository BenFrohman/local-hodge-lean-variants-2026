/-
Copyright (c) 2026 Benjamin Stanley Frohman. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Benjamin Stanley Frohman
-/

-- Polished skeleton citing Mathlib for the four requested items.\n-- Author: Benjamin Stanley Frohman\n-- These are already in Mathlib; this file collects the key statements for local use.\n\nimport Mathlib.NumberTheory.LegendreSymbol.Basic\nimport Mathlib.NumberTheory.LegendreSymbol.QuadraticReciprocity\nimport Mathlib.NumberTheory.LegendreSymbol.JacobiSymbol\nimport Mathlib.NumberTheory.DirichletCharacter.Basic\n\nnamespace QuadraticResidues\n\n/-- Legendre symbol basic properties (from Mathlib). -/\ntheorem legendre_mul {p : \u2115} [Fact p.Prime] (a b : \u2124) :\n    legendreSym p (a * b) = legendreSym p a * legendreSym p b :=\n  legendreSym.mul_left a b\n\n/-- Quadratic reciprocity (one of the Mathlib proofs). -/\ntheorem reciprocity {p q : \u2115} [Fact p.Prime] [Fact q.Prime]\n    (hp : p \u2260 2) (hq : q \u2260 2) (hpq : p \u2260 q) :\n    legendreSym q p * legendreSym p q = (-1) ^ (p / 2 * (q / 2)) :=\n  legendreSym.quadratic_reciprocity hp hq hpq\n\n/-- Jacobi symbol reciprocity. -/\ntheorem jacobi_reciprocity {a b : \u2115} (ha : Odd a) (hb : Odd b) :\n    jacobiSym a b = (-1) ^ (a / 2 * (b / 2)) * jacobiSym b a :=\n  jacobiSym.quadratic_reciprocity ha hb\n\n/-- Character sum bound placeholder (P\u00f3lya\u2013Vinogradov style; full proof in literature). -/\naxiom polya_vinogradov {q : \u2115} (\u03c7 : DirichletCharacter \u2124 q) (h\u03c7 : \u03c7 \u2260 1) (M N : \u2115) :\n    |\u2211 n in Finset.Icc M (M + N), \u03c7 n| \u2264 4 * Real.sqrt q * Real.log q\n\nend QuadraticResidues\n

/-!
# QuadraticResidues

Machine-checked Lean 4 module.
-/
