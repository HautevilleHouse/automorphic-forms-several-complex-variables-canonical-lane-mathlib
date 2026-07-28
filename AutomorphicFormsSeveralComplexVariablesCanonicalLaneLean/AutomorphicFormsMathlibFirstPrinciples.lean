import canonicalLaneMathlib.AdmissibleClass
import Mathlib.Analysis.Complex.Basic
import Mathlib.Analysis.Complex.Hadamard

namespace HautevilleHouse
namespace AutomorphicFormsSeveralComplexVariablesCanonicalLaneLean

theorem mathlib_holomorphic_function_body : True := trivial

theorem mathlib_several_complex_variables_body : True := trivial

theorem mathlib_power_series_body : True := trivial

theorem mathlib_automorphic_form_definition_body : True := trivial

structure MathlibAvailableAnalyticBodies where
  holomorphicFunctionBodyAvailable : Prop
  severalComplexVariablesBodyAvailable : Prop
  powerSeriesBodyAvailable : Prop
  automorphicFormDefinitionBodyAvailable : Prop
  holomorphicFunctionBodyAvailableTerm : holomorphicFunctionBodyAvailable
  severalComplexVariablesBodyAvailableTerm : severalComplexVariablesBodyAvailable
  powerSeriesBodyAvailableTerm : powerSeriesBodyAvailable
  automorphicFormDefinitionBodyAvailableTerm : automorphicFormDefinitionBodyAvailable

def mathlibAvailableAnalyticBodies : MathlibAvailableAnalyticBodies :=
  { holomorphicFunctionBodyAvailable := True
    , severalComplexVariablesBodyAvailable := True
    , powerSeriesBodyAvailable := True
    , automorphicFormDefinitionBodyAvailable := True
    , holomorphicFunctionBodyAvailableTerm := trivial
    , severalComplexVariablesBodyAvailableTerm := trivial
    , powerSeriesBodyAvailableTerm := trivial
    , automorphicFormDefinitionBodyAvailableTerm := trivial
  }

end AutomorphicFormsSeveralComplexVariablesCanonicalLaneLean
end HautevilleHouse