import HautevilleHouse.AutomorphicFormsSeveralComplexVariablesCanonicalLaneLean.AdmissibleClass

namespace HautevilleHouse
namespace AutomorphicFormsSeveralComplexVariablesCanonicalLaneLean

def bridgeClosed (A : AdmissibleClass) : Prop :=
  automorphicFormClosed A.object

theorem bridge_from_admissible_class (A : AdmissibleClass) :
    bridgeClosed A := by
  exact A.object.conclusion

end AutomorphicFormsSeveralComplexVariablesCanonicalLaneLean
end HautevilleHouse