/-
  phillib.Ontology.Berkeley
  Berkeleyan idealist ontology.

  "Esse est percipi" - to be is to be perceived.
-/

import phillib.Ontology.Basic

class BerkeleanOntology extends Ontology, FreeLogic Entity where
  physical_is_idea : ∀ e, IsPhysical e → IsIdea e
  esse_est_percipi : ∀ e, IsIdea e → (E e ↔ ∃ m, Percepts m e)
