import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CellBiologyCytokinesisTheoremCanonicalLaneLean

structure MembraneInsertionPackage where
  vesicleTraffickingToFurrow : Prop
  exocystComplexTethering : Prop
  SNAREmediatedFusion : Prop
  lipidAsymmetryMaintenance : Prop
  furrowIngressionRate : Prop

structure MembraneInsertionEvidence (P : MembraneInsertionPackage) where
  vesicleTraffickingToFurrowClosed : P.vesicleTraffickingToFurrow
  exocystComplexTetheringClosed : P.exocystComplexTethering
  SNAREmediatedFusionClosed : P.SNAREmediatedFusion
  lipidAsymmetryMaintenanceClosed : P.lipidAsymmetryMaintenance
  furrowIngressionRateClosed : P.furrowIngressionRate

def MembraneInsertionClosed (P : MembraneInsertionPackage) : Prop :=
  P.vesicleTraffickingToFurrow ∧ P.exocystComplexTethering ∧ P.SNAREmediatedFusion ∧ P.lipidAsymmetryMaintenance ∧ P.furrowIngressionRate

theorem membrane_insertion_closed_from_evidence (P : MembraneInsertionPackage) (E : MembraneInsertionEvidence P) : MembraneInsertionClosed P := by
  exact And.intro E.vesicleTraffickingToFurrowClosed (And.intro E.exocystComplexTetheringClosed (And.intro E.SNAREmediatedFusionClosed (And.intro E.lipidAsymmetryMaintenanceClosed E.furrowIngressionRateClosed)))

end CellBiologyCytokinesisTheoremCanonicalLaneLean
end HautevilleHouse