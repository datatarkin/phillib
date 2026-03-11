/-
  phillib.Modal.D
  Modal logic D (K + seriality).

  Axiom D: □a → ◇a

  In deontic interpretation: "if something is obligatory, it is permitted"
  (no conflicting obligations).
-/

import phillib.Modal.K

class SystemD (Box : Prop → Prop) extends SystemK Box where
  ax_D : ∀ a, Box a → ¬Box (¬a)
