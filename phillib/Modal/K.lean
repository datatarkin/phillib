/-
  phillib.Modal.K
  The minimal normal modal logic K.

  Axiom K: □(a → b) → (□a → □b)
-/

import phillib.Modal.Basic

class SystemK (Box : Prop → Prop) extends ModalOperator Box where
  ax_K : ∀ a b, Box (a → b) → Box a → Box b
