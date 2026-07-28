import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace AutomorphicFormsSeveralComplexVariablesCanonicalLaneLean

structure HermitianSymmetricDomain where
  ambientSpace : Type
  complexStructure : Type
  hermitianMetric : Type
  isSymmetric : Prop
  noncompact : Prop

structure DomainEvidence (D : HermitianSymmetricDomain) where
  isSymmetricClosed : D.isSymmetric
  noncompactClosed : D.noncompact

def DomainClosed (D : HermitianSymmetricDomain) : Prop :=
  D.isSymmetric ∧ D.noncompact

theorem domain_closed_from_evidence (D : HermitianSymmetricDomain) (E : DomainEvidence D) : DomainClosed D :=
  And.intro E.isSymmetricClosed E.noncompactClosed

end AutomorphicFormsSeveralComplexVariablesCanonicalLaneLean
end HautevilleHouse
