import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CellBiologyCytokinesisTheoremCanonicalLaneLean

structure SpindlePositioningPackage where
  spindleAssemblyCheckpoint : Prop
  spindleOrientation : Prop
  corticalPolarity : Prop
  asymmetricDivision : Prop
  spindleAssemblyCheckpointTerm : spindleAssemblyCheckpoint
  spindleOrientationTerm : spindleOrientation
  corticalPolarityTerm : corticalPolarity
  asymmetricDivisionTerm : asymmetricDivision

def SpindlePositioningClosed (S : SpindlePositioningPackage) : Prop :=
  S.spindleAssemblyCheckpoint ∧ S.spindleOrientation ∧ S.corticalPolarity ∧ S.asymmetricDivision

theorem spindle_positioning_closed_from_evidence (S : SpindlePositioningPackage) : SpindlePositioningClosed S :=
  And.intro S.spindleAssemblyCheckpointTerm (And.intro S.spindleOrientationTerm (And.intro S.corticalPolarityTerm S.asymmetricDivisionTerm))

end CellBiologyCytokinesisTheoremCanonicalLaneLean
end HautevilleHouse