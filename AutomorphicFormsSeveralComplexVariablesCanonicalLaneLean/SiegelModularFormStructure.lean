import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace AutomorphicFormsSeveralComplexVariables

structure SiegelUpperHalfSpace (g : ℕ) where
  symMatrices : Type u
  positiveDefinite : Prop
  complexStructure : Prop

automaton SiegelUpperHalfSpaceEvidence {g : ℕ} (H : SiegelUpperHalfSpace g) where
  posDefClosed : H.positiveDefinite
  complexClosed : H.complexStructure

def SiegelUpperHalfSpaceClosed {g : ℕ} (H : SiegelUpperHalfSpace g) : Prop :=
  H.positiveDefinite ∧ H.complexStructure

theorem siegel_upper_half_space_closed (H : SiegelUpperHalfSpace g) (E : SiegelUpperHalfSpaceEvidence H) : SiegelUpperHalfSpaceClosed H := by
  exact And.intro E.posDefClosed E.complexClosed

structure SiegelModularForm {g : ℕ} (H : SiegelUpperHalfSpace g) (Γ : Type u) [Group Γ] where
  weight : ℤ
  holomorphic : Prop
  automorphyCondition : Γ → H → ℂ
  fInt : H → ℂ
  cuspidal : Prop

automaton SiegelModularFormEvidence {g : ℕ} {H : SiegelUpperHalfSpace g} {Γ : Type u} [Group Γ] (F : SiegelModularForm H Γ) where
  holomorphicClosed : F.holomorphic
  automorphyClosed : ∀ γ : Γ, ∀ z : H, F.fInt (γ • z) = F.automorphyCondition γ z * F.fInt z
  cuspidalClosed : F.cuspidal

def SiegelModularFormClosed {g : ℕ} {H : SiegelUpperHalfSpace g} {Γ : Type u} [Group Γ] (F : SiegelModularForm H Γ) : Prop :=
  F.holomorphic ∧ F.cuspidal ∧ ∀ γ : Γ, ∀ z : H, F.fInt (γ • z) = F.automorphyCondition γ z * F.fInt z

theorem siegel_modular_form_closed {g : ℕ} {H : SiegelUpperHalfSpace g} {Γ : Type u} [Group Γ] (F : SiegelModularForm H Γ) (E : SiegelModularFormEvidence F) : SiegelModularFormClosed F := by
  exact And.intro E.holomorphicClosed (And.intro E.cuspidalClosed E.automorphyClosed)

end AutomorphicFormsSeveralComplexVariables
end HautevilleHouse