import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CellBiologyCytokinesisTheoremCanonicalLaneLean

structure CheckpointPackage where
  spindleAssemblyCheckpoint : Prop
  abscissionCheckpoint : Prop
  checkpointResponse : Prop
  cellCycleProgression : Prop

structure CheckpointEvidence (C : CheckpointPackage) where
  spindleAssemblyCheckpointClosed : C.spindleAssemblyCheckpoint
  abscissionCheckpointClosed : C.abscissionCheckpoint
  checkpointResponseClosed : C.checkpointResponse
  cellCycleProgressionClosed : C.cellCycleProgression

def CheckpointClosed (C : CheckpointPackage) : Prop :=
  C.spindleAssemblyCheckpoint ∧ C.abscissionCheckpoint ∧ C.checkpointResponse ∧ C.cellCycleProgression

theorem checkpoint_closed_from_evidence (C : CheckpointPackage) (E : CheckpointEvidence C) : CheckpointClosed C := by
  exact And.intro E.spindleAssemblyCheckpointClosed (And.intro E.abscissionCheckpointClosed (And.intro E.checkpointResponseClosed E.cellCycleProgressionClosed))

end CellBiologyCytokinesisTheoremCanonicalLaneLean
end HautevilleHouse
