import HautevilleHouse.AutomorphicFormsSeveralComplexVariablesCanonicalLaneLean.AdmissibleClass

namespace HautevilleHouse
namespace AutomorphicFormsSeveralComplexVariablesCanonicalLaneLean

structure AutomorphicAdmittedObject where
  domainType : Type u
  groupType : Type v
  automorphicFormSpace : Type w
  isSymmetricDomain : Prop
  isArithmeticGroup : Prop
  automorphicFormClosed : Prop
  conclusion : automorphicFormClosed

structure AdmissibleClass where
  object : AutomorphicAdmittedObject
  endpointSatisfied : Prop
  remainderRecorded : Prop
  gateWitness : endpointSatisfied ∨ remainderRecorded

def admittedClosure (A : AdmissibleClass) : Prop :=
  automorphicFormClosed A.object ∧ (A.endpointSatisfied ∨ A.remainderRecorded)

end AutomorphicFormsSeveralComplexVariablesCanonicalLaneLean
end HautevilleHouse