import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace AutomorphicFormsSeveralComplexVariablesCanonicalLaneLean

structure KoecherPrinciplePackage where
  automorphicForm : AutomorphicFormPackage
  cuspExpansion : Prop
  polesClassified : Prop
  koecherConditionHolds : Prop

structure KoecherEvidence (K : KoecherPrinciplePackage) where
  cuspExpansionClosed : K.cuspExpansion
  polesClassifiedClosed : K.polesClassified
  koecherConditionHoldsClosed : K.koecherConditionHolds

def KoecherClosed (K : KoecherPrinciplePackage) : Prop :=
  K.cuspExpansion ∧ K.polesClassified ∧ K.koecherConditionHolds

theorem koecher_closed_from_evidence (K : KoecherPrinciplePackage) (E : KoecherEvidence K) : KoecherClosed K :=
  And.intro E.cuspExpansionClosed (And.intro E.polesClassifiedClosed E.koecherConditionHoldsClosed)

end AutomorphicFormsSeveralComplexVariablesCanonicalLaneLean
end HautevilleHouse
