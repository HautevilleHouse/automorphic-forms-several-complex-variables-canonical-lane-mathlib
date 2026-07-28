import canonicalLaneMathlib.AdmissibleClass
import AutomorphicFormsSeveralComplexVariablesCanonicalLaneLean.AutomorphicForm

namespace HautevilleHouse
namespace AutomorphicFormsSeveralComplexVariablesCanonicalLaneLean

def bridgeClosed (A : AdmissibleClass) : Prop :=
  A.object.lFunctionContinuation ∧ A.object.functionalEquation

theorem bridge_from_admissible_class (A : AdmissibleClass) : bridgeClosed A :=
  A.object.conclusion

end AutomorphicFormsSeveralComplexVariablesCanonicalLaneLean
end HautevilleHouse