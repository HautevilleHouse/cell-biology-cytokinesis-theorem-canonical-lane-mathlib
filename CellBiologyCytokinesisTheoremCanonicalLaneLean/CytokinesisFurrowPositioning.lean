import HautevilleHouse.CellBiologyCytokinesisTheoremCanonicalLaneLean.AdmissibleClass

/-!
# Cytokinesis Furrow Positioning Package
-/

namespace HautevilleHouse
namespace CellBiologyCytokinesisTheoremCanonicalLaneLean

structure FurrowPositioningPackage where
  spindleMidzoneSignals : Prop
  corticalExcitability : Prop
  furrowPositionDetermined : Prop
  positionMatchesCellGeometry : Prop

structure FurrowPositioningEvidence (F : FurrowPositioningPackage) where
  spindleMidzoneSignalsClosed : F.spindleMidzoneSignals
  corticalExcitabilityClosed : F.corticalExcitability
  furrowPositionDeterminedClosed : F.furrowPositionDetermined
  positionMatchesCellGeometryClosed : F.positionMatchesCellGeometry

def FurrowPositioningClosed (F : FurrowPositioningPackage) : Prop :=
  F.spindleMidzoneSignals ∧ F.corticalExcitability ∧
  F.furrowPositionDetermined ∧ F.positionMatchesCellGeometry

theorem furrow_positioning_closed_from_evidence
    (F : FurrowPositioningPackage) (E : FurrowPositioningEvidence F) :
    FurrowPositioningClosed F := by
  exact And.intro E.spindleMidzoneSignalsClosed
    (And.intro E.corticalExcitabilityClosed
      (And.intro E.furrowPositionDeterminedClosed
        E.positionMatchesCellGeometryClosed))

end CellBiologyCytokinesisTheoremCanonicalLaneLean
end HautevilleHouse