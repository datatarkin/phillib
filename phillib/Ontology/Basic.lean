/-
  phillib.Ontology.Basic
  Basic ontological concepts.
-/

import phillib.FreeLogic.Basic

class Ontology where
  Entity : Type
  Mind : Type
  Percepts : Mind → Entity → Prop
  IsIdea : Entity → Prop
  IsPhysical : Entity → Prop
