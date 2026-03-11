/-
  phillib.Modal.S4
  Modal logic S4 (T + transitivity).

  Axiom 4: □a → □□a
-/

import phillib.Modal.T

class SystemS4 (Box : Prop → Prop) extends SystemT Box where
  ax_4 : ∀ a, Box a → Box (Box a)
