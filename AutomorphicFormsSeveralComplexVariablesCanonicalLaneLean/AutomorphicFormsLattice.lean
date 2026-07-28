import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace AutomorphicFormsSeveralComplexVariablesCanonicalLaneLean

structure LatticePackage where
  rank : Nat
  dimension : Nat
  gramMatrix : Type
  positiveDefinite : Prop
  discrete : Prop
  cocompact : Prop

structure LatticeEvidence (L : LatticePackage) where
  positiveDefiniteClosed : L.positiveDefinite
  discreteClosed : L.discrete
  cocompactClosed : L.cocompact

def LatticeClosed (L : LatticePackage) : Prop :=
  L.positiveDefinite ∧ L.discrete ∧ L.cocompact

theorem lattice_closed_from_evidence (L : LatticePackage) (E : LatticeEvidence L) : LatticeClosed L :=
  And.intro E.positiveDefiniteClosed (And.intro E.discreteClosed E.cocompactClosed)

end AutomorphicFormsSeveralComplexVariablesCanonicalLaneLean
end HautevilleHouse