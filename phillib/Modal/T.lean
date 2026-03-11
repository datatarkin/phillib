/-
  phillib.Modal.T
  Modal logic T (K + reflexivity).

  Axiom T: □a → a
-/

import phillib.Modal.K

class SystemT (Box : Prop → Prop) extends SystemK Box where
  ax_T : ∀ a, Box a → a
