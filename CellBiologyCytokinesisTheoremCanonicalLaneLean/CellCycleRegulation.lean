import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CellBiologyCytokinesisTheoremCanonicalLaneLean

structure CellCycleRegulationPackage where
  cyclinProduction : Prop
  cdkActivation : Prop
  checkpointControl : Prop
  transitionTiming : Prop

structure CellCycleRegulationEvidence (C : CellCycleRegulationPackage) where
  cyclinProductionClosed : C.cyclinProduction
  cdkActivationClosed : C.cdkActivation
  checkpointControlClosed : C.checkpointControl
  transitionTimingClosed : C.transitionTiming

def CellCycleRegulationClosed (C : CellCycleRegulationPackage) : Prop :=
  C.cyclinProduction ∧ C.cdkActivation ∧ C.checkpointControl ∧ C.transitionTiming

theorem cell_cycle_regulation_closed_from_evidence (C : CellCycleRegulationPackage) (E : CellCycleRegulationEvidence C) :
    CellCycleRegulationClosed C := by
  exact And.intro E.cyclinProductionClosed (And.intro E.cdkActivationClosed (And.intro E.checkpointControlClosed E.transitionTimingClosed))

end CellBiologyCytokinesisTheoremCanonicalLaneLean
end HautevilleHouse