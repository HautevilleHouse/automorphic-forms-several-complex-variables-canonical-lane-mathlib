import HautevilleHouse.AutomorphicFormsSeveralComplexVariablesCanonicalLaneLean.SymmetricDomainPackage

namespace HautevilleHouse
namespace AutomorphicFormsSeveralComplexVariablesCanonicalLaneLean

structure AutomorphicFormPackage (S : SymmetricDomainPackage) where
  automorphicFormSpace : Type u
  group : Type v
  invarianceCondition : Prop
  growthCondition : Prop
  isAutomorphic : Prop

def AutomorphicFormClosed {S : SymmetricDomainPackage} (F : AutomorphicFormPackage S) : Prop :=
  F.invarianceCondition ∧ F.growthCondition ∧ F.isAutomorphic

structure AutomorphicFormEvidence {S : SymmetricDomainPackage} (F : AutomorphicFormPackage S) where
  invarianceConditionClosed : F.invarianceCondition
  growthConditionClosed : F.growthCondition
  isAutomorphicClosed : F.isAutomorphic

theorem automorphic_form_closed_from_evidence {S : SymmetricDomainPackage} (F : AutomorphicFormPackage S)
    (E : AutomorphicFormEvidence F) : AutomorphicFormClosed F := by
  exact And.intro E.invarianceConditionClosed
    (And.intro E.growthConditionClosed E.isAutomorphicClosed)

end AutomorphicFormsSeveralComplexVariablesCanonicalLaneLean
end HautevilleHouse