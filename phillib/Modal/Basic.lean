/-
  phillib.Modal.Basic
  Basic definitions for modal logic operators.
-/

class ModalOperator (Box : Prop → Prop)

def Possible (Box : Prop → Prop) (a : Prop) : Prop := ¬Box (¬a)
