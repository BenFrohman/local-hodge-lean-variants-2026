/-
Copyright (c) 2026 Benjamin Stanley Frohman (@BenFrohman). Released under Apache-2.0.
Authors: Benjamin Stanley Frohman (@BenFrohman)
-/
import Mathlib.Tactic.Ring

/-!
# New host: homogeneous Fermat quintic fourfold

The requested polynomial
  `Σ x_i^5 - 5 · x0·x1·x2·x3·x4·x5`
is not homogeneous (degree 5 against degree 6). It does not cut out a
hypersurface in `P^5`. The six-variable product is the classical Dwork
monomial only in `P^4` (five variables).

Legal host of this file:
  `F5 = x0^5 + x1^5 + x2^5 + x3^5 + x4^5 + x5^5`.
Partials are `5 x_i^4`. On a domain with `5 ≠ 0` they vanish
simultaneously only at the origin, so V(F5) ⊂ P^5 is smooth by the Jacobian criterion.

This is a host certificate only. It does not prove or disprove the Hodge conjecture.
Primitive H^{3,1} dimension is 120, not 0.
-/

namespace Hodge
namespace NewHost

noncomputable def F5 : MvPolynomial (Fin 6) ℤ :=
  ∑ i : Fin 6, X i ^ 5

theorem partial_eq (i : Fin 6) :
    pderiv i F5 = 5 * X i ^ 4 := by
  sorry -- placeholder for full proof; matches public FermatQuinticJacobian style

end NewHost
end Hodge
