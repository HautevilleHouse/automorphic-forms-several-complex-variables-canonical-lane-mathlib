import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace AutomorphicFormsSeveralComplexVariablesCanonicalLaneLean

structure AutomorphicAdmittedObject where
  domain : Type
  group : Type
  automorphicForm : Type
  compactification : Prop
  boundaryComponentsClassified : Prop

structure AdmissibleClass where
  object : AutomorphicAdmittedObject
  endpointSatisfied : Prop
  remainderRecorded : Prop
  gateWitness : endpointSatisfied ∨ remainderRecorded

def admittedClosure (A : AdmissibleClass) : Prop :=
  (A.object.compactification ∧ A.object.boundaryComponentsClassified) ∧ (A.endpointSatisfied ∨ A.remainderRecorded)

end AutomorphicFormsSeveralComplexVariablesCanonicalLaneLean
end HautevilleHouse
