import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace AutomorphicFormsSeveralComplexVariablesCanonicalLaneLean

structure BoundedSymmetricDomain where
  dimension : ℕ
  symmetric : Prop
  bounded : Prop
  irreducible : Prop

structure AutomorphicForm (D : BoundedSymmetricDomain) where
  space : Type
  weight : ℤ
  automorphyFactor : Type
  invariance : Prop
  cuspCondition : Prop
  holomorphic : Prop

structure AutomorphicAdmittedObject where
  domain : BoundedSymmetricDomain
  form : AutomorphicForm domain
  lFunctionContinuation : Prop
  functionalEquation : Prop
  conclusion : lFunctionContinuation ∧ functionalEquation

structure AdmissibleClass where
  object : AutomorphicAdmittedObject
  endpointSatisfied : Prop
  remainderRecorded : Prop
  gateWitness : endpointSatisfied ∨ remainderRecorded

def admittedClosure (A : AdmissibleClass) : Prop :=
  (A.object.lFunctionContinuation ∧ A.object.functionalEquation) ∧ (A.endpointSatisfied ∨ A.remainderRecorded)

end AutomorphicFormsSeveralComplexVariablesCanonicalLaneLean
end HautevilleHouse