import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace AutomorphicFormsSeveralComplexVariablesCanonicalLaneLean

structure LFunctionPackage where
  automorphicForm : Type
  LFunction : Type
  functionalEquation : Prop
  analyticContinuation : Prop
  eulerProduct : Prop

structure LFunctionEvidence (L : LFunctionPackage) where
  functionalEquationClosed : L.functionalEquation
  analyticContinuationClosed : L.analyticContinuation
  eulerProductClosed : L.eulerProduct

def LFunctionClosed (L : LFunctionPackage) : Prop :=
  L.functionalEquation ∧ L.analyticContinuation ∧ L.eulerProduct

theorem lfunction_closed_from_evidence (L : LFunctionPackage) (E : LFunctionEvidence L) : LFunctionClosed L :=
  And.intro E.functionalEquationClosed (And.intro E.analyticContinuationClosed E.eulerProductClosed)

end AutomorphicFormsSeveralComplexVariablesCanonicalLaneLean
end HautevilleHouse