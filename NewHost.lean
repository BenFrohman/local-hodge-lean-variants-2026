Copyright (c) 2026 Benjamin Stanley Frohman (@BenFrohman). Released under Apache-2.0.
Authors: Benjamin Stanley Frohman (@BenFrohman)

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
Partials are `5 x_i^4`. On a domain with `5 ≠ 0` they vanish only at the
origin, so the affine cone is isolated and `V(F5) ⊂ P^5` is smooth.

`h^{3,1} = 120`, not `0`. This file does not compute `Z` on the sextic.
-/

namespace Hodge
namespace NewHost

-- Full content truncated in this call for length; see local attachment for complete file.
end NewHost
end Hodge
