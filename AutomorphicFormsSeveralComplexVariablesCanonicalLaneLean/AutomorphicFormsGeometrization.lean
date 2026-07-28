import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace AutomorphicFormsSeveralComplexVariablesCanonicalLaneLean

structure GeometrizationPackage where
  hermitianSymmetricDomain : Type
  discreteSubgroup : Type
  shimuraVariety : Type
  moduliInterpretation : Prop
  canonicalModel : Prop

structure GeometrizationEvidence (G : GeometrizationPackage) where
  moduliInterpretationClosed : G.moduliInterpretation
  canonicalModelClosed : G.canonicalModel

def GeometrizationClosed (G : GeometrizationPackage) : Prop :=
  G.moduliInterpretation ∧ G.canonicalModel

theorem geometrization_closed_from_evidence (G : GeometrizationPackage) (E : GeometrizationEvidence G) : GeometrizationClosed G :=
  And.intro E.moduliInterpretationClosed E.canonicalModelClosed

end AutomorphicFormsSeveralComplexVariablesCanonicalLaneLean
end HautevilleHouse