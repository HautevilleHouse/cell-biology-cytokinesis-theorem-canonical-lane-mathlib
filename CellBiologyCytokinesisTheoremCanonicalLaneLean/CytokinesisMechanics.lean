import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CellBiologyCytokinesisTheoremCanonicalLaneLean

structure CytokinesisMechanicsPackage where
  cortexContractility : Prop
  cleavageFurrowIngression : Prop
  intercellularBridgeFormation : Prop
  abscissionMechanics : Prop
  daughterCellSeparation : Prop

structure CytokinesisMechanicsEvidence (M : CytokinesisMechanicsPackage) where
  cortexContractilityClosed : M.cortexContractility
  cleavageFurrowIngressionClosed : M.cleavageFurrowIngression
  intercellularBridgeFormationClosed : M.intercellularBridgeFormation
  abscissionMechanicsClosed : M.abscissionMechanics
  daughterCellSeparationClosed : M.daughterCellSeparation

def CytokinesisMechanicsClosed (M : CytokinesisMechanicsPackage) : Prop :=
  M.cortexContractility ∧ M.cleavageFurrowIngression ∧ M.intercellularBridgeFormation ∧ M.abscissionMechanics ∧ M.daughterCellSeparation

theorem cytokinesis_mechanics_closed_from_evidence (M : CytokinesisMechanicsPackage) (E : CytokinesisMechanicsEvidence M) : CytokinesisMechanicsClosed M := by
  exact And.intro E.cortexContractilityClosed (And.intro E.cleavageFurrowIngressionClosed (And.intro E.intercellularBridgeFormationClosed (And.intro E.abscissionMechanicsClosed E.daughterCellSeparationClosed)))

end CellBiologyCytokinesisTheoremCanonicalLaneLean
end HautevilleHouse
