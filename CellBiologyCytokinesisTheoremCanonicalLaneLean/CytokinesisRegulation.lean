import HautevilleHouse.CellBiologyCytokinesisTheoremCanonicalLaneLean.ContractileRingAssembly

/-!
# Cytokinesis Regulation Package
-/

namespace HautevilleHouse
namespace CellBiologyCytokinesisTheoremCanonicalLaneLean

structure CytokinesisRegulationPackage {R : ActinMyosinRingPackage} {E : ActinMyosinRingEvidence R} {C : ContractileRingAssemblyPackage E} (Ev : ContractileRingAssemblyEvidence C) where
  spindleCheckpoint : Prop
  noCentralspindlin : Prop
  auroraBKinase : Prop
  abscissionTiming : Prop

structure CytokinesisRegulationEvidence {R : ActinMyosinRingPackage} {E : ActinMyosinRingEvidence R} {C : ContractileRingAssemblyPackage E} {Ev : ContractileRingAssemblyEvidence C} (Reg : CytokinesisRegulationPackage Ev) where
  spindleCheckpointClosed : Reg.spindleCheckpoint
  noCentralspindlinClosed : Reg.noCentralspindlin
  auroraBKinaseClosed : Reg.auroraBKinase
  abscissionTimingClosed : Reg.abscissionTiming

def CytokinesisRegulationClosed {R : ActinMyosinRingPackage} {E : ActinMyosinRingEvidence R} {C : ContractileRingAssemblyPackage E} {Ev : ContractileRingAssemblyEvidence C} (Reg : CytokinesisRegulationPackage Ev) : Prop :=
  Reg.spindleCheckpoint ∧ Reg.noCentralspindlin ∧ Reg.auroraBKinase ∧ Reg.abscissionTiming

theorem cytokinesis_regulation_closed_from_evidence {R : ActinMyosinRingPackage} {E : ActinMyosinRingEvidence R} {C : ContractileRingAssemblyPackage E} {Ev : ContractileRingAssemblyEvidence C} (Reg : CytokinesisRegulationPackage Ev) (RegE : CytokinesisRegulationEvidence Reg) : CytokinesisRegulationClosed Reg := by
  exact And.intro RegE.spindleCheckpointClosed (And.intro RegE.noCentralspindlinClosed (And.intro RegE.auroraBKinaseClosed RegE.abscissionTimingClosed))

end CellBiologyCytokinesisTheoremCanonicalLaneLean
end HautevilleHouse