/-
  phillib.Ontology.Basic
  Basic ontological concepts.
-/

class Ontology where
  Entity : Type
  Being : Entity → Prop
  Mind : Type
  Percepts : Mind → Entity → Prop
  IsIdea : Entity → Prop
  IsPhysical : Entity → Prop
