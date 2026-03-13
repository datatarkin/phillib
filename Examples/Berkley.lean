/-
  Berkeley's Argument: Physical objects cannot exist unperceived.

  From "Esse est percipi" (to be is to be perceived) and the thesis that
  physical objects are ideas, it follows that physical objects cannot
  exist outside of a mind.
-/

import phillib.Ontology.Berkeley

variable [O : BerkeleanOntology]

open BerkeleanOntology in
theorem physical_objects_not_exist_out_mind :
    ∀ e : O.Entity, O.IsPhysical e ∧ (¬∃ m : O.Mind, O.Percepts m e) → ¬O.Being e :=
  fun e ⟨h_phys, h_not_perceived⟩ =>
    let e_is_idea : O.IsIdea e := O.physical_is_idea e h_phys
    let iff_perceived := O.esse_est_percipi e e_is_idea
    fun h_being => h_not_perceived (iff_perceived.mp h_being)
