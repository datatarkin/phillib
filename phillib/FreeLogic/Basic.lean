/-
  phillib.FreeLogic.Basic
  Free logic - a logic that does not presuppose that all terms denote existing objects.

  E! is the existence predicate: E! x means "x exists"
-/

class FreeLogic (α : Type) where
  E : α → Prop

notation "E!" => FreeLogic.E
