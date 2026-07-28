import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace AutomorphicFormsSeveralComplexVariables

structure FourierJacobiExpansion {g : ℕ} (H : SiegelUpperHalfSpace g) where
  coefficients : ℤ → ℂ
  convergence : Prop
  automorphyCompatibility : Prop

automaton FourierJacobiEvidence {g : ℕ} {H : SiegelUpperHalfSpace g} (F : FourierJacobiExpansion H) where
  convergenceClosed : F.convergence
  automorphyCompatClosed : F.automorphyCompatibility

def FourierJacobiClosed {g : ℕ} {H : SiegelUpperHalfSpace g} (F : FourierJacobiExpansion H) : Prop :=
  F.convergence ∧ F.automorphyCompatibility

theorem fourier_jacobi_closed {g : ℕ} {H : SiegelUpperHalfSpace g} (F : FourierJacobiExpansion H) (E : FourierJacobiEvidence F) : FourierJacobiClosed F := by
  exact And.intro E.convergenceClosed E.automorphyCompatClosed

structure BoundaryBehavior (D : BoundedSymmetricDomain) where
  boundaryComponent : Type u
  automorphicExtension : Prop
  regularityAtBoundary : Prop

automaton BoundaryBehaviorEvidence (D : BoundedSymmetricDomain) (B : BoundaryBehavior D) where
  extensionClosed : B.automorphicExtension
  regularityClosed : B.regularityAtBoundary

def BoundaryBehaviorClosed (D : BoundedSymmetricDomain) (B : BoundaryBehavior D) : Prop :=
  B.automorphicExtension ∧ B.regularityAtBoundary

theorem boundary_behavior_closed (D : BoundedSymmetricDomain) (B : BoundaryBehavior D) (E : BoundaryBehaviorEvidence D B) : BoundaryBehaviorClosed D B := by
  exact And.intro E.extensionClosed E.regularityClosed

end AutomorphicFormsSeveralComplexVariables
end HautevilleHouse