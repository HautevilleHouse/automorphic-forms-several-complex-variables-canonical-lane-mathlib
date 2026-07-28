import HautevilleHouse.AutomorphicFormsSeveralComplexVariablesCanonicalLaneLean.BergmanKernelPackage

namespace HautevilleHouse
namespace AutomorphicFormsSeveralComplexVariablesCanonicalLaneLean

structure AutomorphicLiftPackage {S : SymmetricDomainPackage} {F : AutomorphicFormPackage S} {B : BergmanKernelPackage F} where
  liftMap : Type u
  injectivity : Prop
  surjectivity : Prop

def AutomorphicLiftClosed {S : SymmetricDomainPackage} {F : AutomorphicFormPackage S} {B : BergmanKernelPackage F} (L : AutomorphicLiftPackage) : Prop :=
  L.injectivity ∧ L.surjectivity

structure AutomorphicLiftEvidence {S : SymmetricDomainPackage} {F : AutomorphicFormPackage S} {B : BergmanKernelPackage F} (L : AutomorphicLiftPackage) where
  injectivityClosed : L.injectivity
  surjectivityClosed : L.surjectivity

theorem automorphic_lift_closed_from_evidence {S : SymmetricDomainPackage} {F : AutomorphicFormPackage S} {B : BergmanKernelPackage F}
    (L : AutomorphicLiftPackage) (E : AutomorphicLiftEvidence L) : AutomorphicLiftClosed L := by
  exact And.intro E.injectivityClosed E.surjectivityClosed

end AutomorphicFormsSeveralComplexVariablesCanonicalLaneLean
end HautevilleHouse