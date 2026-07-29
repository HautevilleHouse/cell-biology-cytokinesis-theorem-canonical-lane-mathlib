import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CellBiologyCytokinesisTheoremCanonicalLaneLean

structure SpindleMidzonePackage where
  microtubuleBundling : Prop
  centralSpindlinComplex : Prop
  kinesinMotorActivity : Prop
  plusEndDynamics : Prop

structure SpindleMidzoneEvidence (M : SpindleMidzonePackage) where
  microtubuleBundlingClosed : M.microtubuleBundling
  centralSpindlinComplexClosed : M.centralSpindlinComplex
  kinesinMotorActivityClosed : M.kinesinMotorActivity
  plusEndDynamicsClosed : M.plusEndDynamics

def SpindleMidzoneClosed (M : SpindleMidzonePackage) : Prop :=
  M.microtubuleBundling ∧ M.centralSpindlinComplex ∧
  M.kinesinMotorActivity ∧ M.plusEndDynamics

theorem spindle_midzone_closed_from_evidence (M : SpindleMidzonePackage)
    (E : SpindleMidzoneEvidence M) : SpindleMidzoneClosed M := by
  exact And.intro E.microtubuleBundlingClosed
    (And.intro E.centralSpindlinComplexClosed
      (And.intro E.kinesinMotorActivityClosed E.plusEndDynamicsClosed))

end CellBiologyCytokinesisTheoremCanonicalLaneLean
end HautevilleHouse