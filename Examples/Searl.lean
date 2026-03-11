import phillib.Modal.D

axiom Fact : Type -- We have a certain set of brute facts
axiom Institutional : Fact → Prop -- We have some way to determine if brute fact is instituational
axiom Agent : Type -- We have some agent
axiom Promise : Agent → Fact → Prop -- Agent is able to promise to some fact will be forced
axiom Force : Agent → Fact → Prop -- We determine fact that agent forcess fact (or trying to force)


axiom Obligation : Prop → Prop -- We determine obligation relation
axiom obligation_system : SystemD Obligation

axiom promise_to_obligation : ∀ a : Agent, ∀ f : Fact, Institutional f ∧ Promise a f → Obligation (Force a f)


section
  /-
  Jones uttered the words "I hereby promise to pay you, Smith, five dollars."
  Jones promised to pay Smith five dollars.
  Jones placed himself under an obligation to pay Smith five dollars.
  Jones is under an obligation to pay Smith five dollars.
  Jones ought to pay Smith five dollars.
  -/
  variable (Jones : Agent)
  variable (Jones_Pays_Smith : Fact)
  variable (JPS_Institutaional : Institutional Jones_Pays_Smith)
  variable (Jones_Promised : Promise Jones Jones_Pays_Smith)
  include JPS_Institutaional Jones_Promised
  theorem Jones_Ought_Pay_Smith :  Obligation (Force Jones Jones_Pays_Smith) :=
    promise_to_obligation Jones Jones_Pays_Smith (And.intro JPS_Institutaional Jones_Promised)

end
