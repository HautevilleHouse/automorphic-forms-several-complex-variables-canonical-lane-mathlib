import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace AutomorphicFormsSeveralComplexVariablesCanonicalLaneLean

structure SiegelModularFormsPackage where
  genus : ℕ
  weight : ℕ
  holomorphicCondition : Prop
  symplecticInvariance : Prop
  cuspCondition : Prop
  growthCondition : Prop

structure SiegelModularFormsEvidence (P : SiegelModularFormsPackage) where
  holomorphicConditionClosed : P.holomorphicCondition
  symplecticInvarianceClosed : P.symplecticInvariance
  cuspConditionClosed : P.cuspCondition
  growthConditionClosed : P.growthCondition

def SiegelModularFormsClosed (P : SiegelModularFormsPackage) : Prop :=
  P.holomorphicCondition ∧ P.symplecticInvariance ∧ P.cuspCondition ∧ P.growthCondition

theorem siegel_modular_forms_closed_from_evidence (P : SiegelModularFormsPackage) (E : SiegelModularFormsEvidence P) :
    SiegelModularFormsClosed P := by
  exact And.intro E.holomorphicConditionClosed
    (And.intro E.symplecticInvarianceClosed
      (And.intro E.cuspConditionClosed E.growthConditionClosed))

end AutomorphicFormsSeveralComplexVariablesCanonicalLaneLean
end HautevilleHouse