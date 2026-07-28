import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace AutomorphicFormsSeveralComplexVariables

structure ComplexBall (n : ℕ) where
  ballType : Type u
  complexStructure : Prop
  hyperbolicMetric : Prop

automaton ComplexBallEvidence {n : ℕ} (B : ComplexBall n) where
  complexClosed : B.complexStructure
  metricClosed : B.hyperbolicMetric

def ComplexBallClosed {n : ℕ} (B : ComplexBall n) : Prop :=
  B.complexStructure ∧ B.hyperbolicMetric

theorem complex_ball_closed {n : ℕ} (B : ComplexBall n) (E : ComplexBallEvidence B) : ComplexBallClosed B := by
  exact And.intro E.complexClosed E.metricClosed

structure DiscreteGroup (Γ : Type u) [Group Γ] (X : Type u) [TopologicalSpace X] where
  properlyDiscontinuous : Prop
  fixedPointsDiscrete : Prop

automaton DiscreteGroupEvidence {Γ : Type u} [Group Γ] {X : Type u} [TopologicalSpace X] (G : DiscreteGroup Γ X) where
  properlyDiscontinuousClosed : G.properlyDiscontinuous
  fixedPointsDiscreteClosed : G.fixedPointsDiscrete

def DiscreteGroupClosed {Γ : Type u} [Group Γ] {X : Type u} [TopologicalSpace X] (G : DiscreteGroup Γ X) : Prop :=
  G.properlyDiscontinuous ∧ G.fixedPointsDiscrete

theorem discrete_group_closed {Γ : Type u} [Group Γ] {X : Type u} [TopologicalSpace X] (G : DiscreteGroup Γ X) (E : DiscreteGroupEvidence G) : DiscreteGroupClosed G := by
  exact And.intro E.properlyDiscontinuousClosed E.fixedPointsDiscreteClosed

structure BallQuotient {n : ℕ} (B : ComplexBall n) (Γ : Type u) [Group Γ] (G : DiscreteGroup Γ B) where
  quotientSpace : Type u
  quotientMap : B → quotientSpace
  automorphicForms : Prop

automaton BallQuotientEvidence {n : ℕ} {B : ComplexBall n} {Γ : Type u} [Group Γ] {G : DiscreteGroup Γ B} (Q : BallQuotient B Γ G) where
  quotientMapClosed : Function.Surjective Q.quotientMap
  automorphicFormsClosed : Q.automorphicForms

def BallQuotientClosed {n : ℕ} {B : ComplexBall n} {Γ : Type u} [Group Γ] {G : DiscreteGroup Γ B} (Q : BallQuotient B Γ G) : Prop :=
  Function.Surjective Q.quotientMap ∧ Q.automorphicForms

theorem ball_quotient_closed {n : ℕ} {B : ComplexBall n} {Γ : Type u} [Group Γ] {G : DiscreteGroup Γ B} (Q : BallQuotient B Γ G) (E : BallQuotientEvidence Q) : BallQuotientClosed Q := by
  exact And.intro E.quotientMapClosed E.automorphicFormsClosed

end AutomorphicFormsSeveralComplexVariables
end HautevilleHouse