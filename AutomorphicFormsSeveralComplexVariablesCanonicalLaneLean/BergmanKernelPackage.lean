import HautevilleHouse.AutomorphicFormsSeveralComplexVariablesCanonicalLaneLean.AutomorphicFormPackage

namespace HautevilleHouse
namespace AutomorphicFormsSeveralComplexVariablesCanonicalLaneLean

structure BergmanKernelPackage {S : SymmetricDomainPackage} (F : AutomorphicFormPackage S) where
  bergmanKernel : Type u
  reproducingProperty : Prop
  holomorphic : Prop

def BergmanKernelClosed {S : SymmetricDomainPackage} {F : AutomorphicFormPackage S} (B : BergmanKernelPackage F) : Prop :=
  B.reproducingProperty ∧ B.holomorphic

structure BergmanKernelEvidence {S : SymmetricDomainPackage} {F : AutomorphicFormPackage S} (B : BergmanKernelPackage F) where
  reproducingPropertyClosed : B.reproducingProperty
  holomorphicClosed : B.holomorphic

theorem bergman_kernel_closed_from_evidence {S : SymmetricDomainPackage} {F : AutomorphicFormPackage S}
    (B : BergmanKernelPackage F) (E : BergmanKernelEvidence B) : BergmanKernelClosed B := by
  exact And.intro E.reproducingPropertyClosed E.holomorphicClosed

end AutomorphicFormsSeveralComplexVariablesCanonicalLaneLean
end HautevilleHouse