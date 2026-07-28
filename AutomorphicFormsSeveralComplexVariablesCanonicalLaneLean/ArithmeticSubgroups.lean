import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace AutomorphicFormsSeveralComplexVariablesCanonicalLaneLean

structure ArithmeticSubgroupsPackage where
  groupType : Type
  congruenceCondition : Prop
  finiteIndexCondition : Prop
  arithmeticityCondition : Prop
  discreteSubgroup : Prop

structure ArithmeticSubgroupsEvidence (G : ArithmeticSubgroupsPackage) where
  congruenceConditionClosed : G.congruenceCondition
  finiteIndexConditionClosed : G.finiteIndexCondition
  arithmeticityConditionClosed : G.arithmeticityCondition
  discreteSubgroupClosed : G.discreteSubgroup

def ArithmeticSubgroupsClosed (G : ArithmeticSubgroupsPackage) : Prop :=
  G.congruenceCondition ∧ G.finiteIndexCondition ∧ G.arithmeticityCondition ∧ G.discreteSubgroup

theorem arithmetic_subgroups_closed_from_evidence (G : ArithmeticSubgroupsPackage) (E : ArithmeticSubgroupsEvidence G) :
    ArithmeticSubgroupsClosed G := by
  exact And.intro E.congruenceConditionClosed
    (And.intro E.finiteIndexConditionClosed
      (And.intro E.arithmeticityConditionClosed E.discreteSubgroupClosed))

end AutomorphicFormsSeveralComplexVariablesCanonicalLaneLean
end HautevilleHouse