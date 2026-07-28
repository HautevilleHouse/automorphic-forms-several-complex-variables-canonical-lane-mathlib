import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace AutomorphicFormsSeveralComplexVariablesCanonicalLaneLean

structure BailyBorelCompactificationPackage where
  domain : HermitianSymmetricDomain
  arithmeticGroup : Type
  compactificationSpace : Type
  boundaryStructureClassified : Prop
  embeddingOfDomain : Prop

structure CompactificationEvidence (C : BailyBorelCompactificationPackage) where
  boundaryStructureClassifiedClosed : C.boundaryStructureClassified
  embeddingOfDomainClosed : C.embeddingOfDomain

def CompactificationClosed (C : BailyBorelCompactificationPackage) : Prop :=
  C.boundaryStructureClassified ∧ C.embeddingOfDomain

theorem compactification_closed_from_evidence (C : BailyBorelCompactificationPackage) (E : CompactificationEvidence C) : CompactificationClosed C :=
  And.intro E.boundaryStructureClassifiedClosed E.embeddingOfDomainClosed

end AutomorphicFormsSeveralComplexVariablesCanonicalLaneLean
end HautevilleHouse
