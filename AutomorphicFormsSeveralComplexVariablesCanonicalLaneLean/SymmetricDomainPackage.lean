import HautevilleHouse.AutomorphicFormsSeveralComplexVariablesCanonicalLaneLean.AdmissibleClass

namespace HautevilleHouse
namespace AutomorphicFormsSeveralComplexVariablesCanonicalLaneLean

structure SymmetricDomainPackage where
  domain : Type u
  complexStructure : Prop
  hermitianMetric : Prop
  isBounded : Prop
  isSymmetric : Prop

def SymmetricDomainClosed (S : SymmetricDomainPackage) : Prop :=
  S.complexStructure ∧ S.hermitianMetric ∧ S.isBounded ∧ S.isSymmetric

structure SymmetricDomainEvidence (S : SymmetricDomainPackage) where
  complexStructureClosed : S.complexStructure
  hermitianMetricClosed : S.hermitianMetric
  isBoundedClosed : S.isBounded
  isSymmetricClosed : S.isSymmetric

theorem symmetric_domain_closed_from_evidence (S : SymmetricDomainPackage)
    (E : SymmetricDomainEvidence S) : SymmetricDomainClosed S := by
  exact And.intro E.complexStructureClosed
    (And.intro E.hermitianMetricClosed
      (And.intro E.isBoundedClosed E.isSymmetricClosed))

end AutomorphicFormsSeveralComplexVariablesCanonicalLaneLean
end HautevilleHouse