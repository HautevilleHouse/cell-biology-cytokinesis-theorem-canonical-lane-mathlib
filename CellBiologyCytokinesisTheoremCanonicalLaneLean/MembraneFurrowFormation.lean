import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CellBiologyCytokinesisTheoremCanonicalLaneLean

structure MembraneFurrowFormationPackage where
  plasmaMembraneIngression : Prop
  midbodyResolved : Prop
  abscissionRegulation : Prop
  membraneTrafficDirected : Prop

structure MembraneFurrowFormationEvidence (M : MembraneFurrowFormationPackage) where
  plasmaMembraneIngressionClosed : M.plasmaMembraneIngression
  midbodyResolvedClosed : M.midbodyResolved
  abscissionRegulationClosed : M.abscissionRegulation
  membraneTrafficDirectedClosed : M.membraneTrafficDirected

def MembraneFurrowFormationClosed (M : MembraneFurrowFormationPackage) : Prop :=
  M.plasmaMembraneIngression ∧ M.midbodyResolved ∧ M.abscissionRegulation ∧ M.membraneTrafficDirected

theorem membrane_furrow_formation_closed_from_evidence (M : MembraneFurrowFormationPackage) (E : MembraneFurrowFormationEvidence M) :
    MembraneFurrowFormationClosed M := by
  exact And.intro E.plasmaMembraneIngressionClosed (And.intro E.midbodyResolvedClosed (And.intro E.abscissionRegulationClosed E.membraneTrafficDirectedClosed))

end CellBiologyCytokinesisTheoremCanonicalLaneLean
end HautevilleHouse