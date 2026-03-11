/-
  phillib.Modal.S5
  Modal logic S5 (S4 + euclidean).

  Axiom 5: ◇a → □◇a
-/

import phillib.Modal.S4

class SystemS5 (Box : Prop → Prop) extends SystemS4 Box where
  ax_5 : ∀ a, ¬Box (¬a) → Box (¬Box (¬a))
