import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace AutomorphicFormsSeveralComplexVariablesCanonicalLaneLean

structure FourierExpansionPackage where
  lattice : LatticePackage
  cusp : Type
  fourierCoefficients : Type
  growthCondition : Prop
  convergence : Prop

structure FourierExpansionEvidence (F : FourierExpansionPackage) where
  growthConditionClosed : F.growthCondition
  convergenceClosed : F.convergence

def FourierExpansionClosed (F : FourierExpansionPackage) : Prop :=
  F.growthCondition ∧ F.convergence

theorem fourier_expansion_closed_from_evidence (F : FourierExpansionPackage) (E : FourierExpansionEvidence F) : FourierExpansionClosed F :=
  And.intro E.growthConditionClosed E.convergenceClosed

end AutomorphicFormsSeveralComplexVariablesCanonicalLaneLean
end HautevilleHouse