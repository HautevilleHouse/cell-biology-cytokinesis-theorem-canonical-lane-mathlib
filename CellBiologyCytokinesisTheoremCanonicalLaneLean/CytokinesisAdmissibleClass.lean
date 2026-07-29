import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CellBiologyCytokinesisTheoremCanonicalLaneLean

structure CytokinesisAdmittedObject where
  cell : Type
  divisionProcess : Prop
  contractileRingFormed : Prop
  abscissionCompleted : divisionProcess ∧ contractileRingFormed

structure AdmissibleClass where
  object : CytokinesisAdmittedCell
  endpointSatisfied : Prop
  remainderRecorded : Prop
  gateWitness : endpointSatisfied ∨ remainderRecorded

def admittedClosure (A : AdmissibleClass) : Prop :=
  cytokinesisWitnessClosed A.object ∧ (A.endpointSatisfied ∨ A.remainderRecorded)

end CellBiologyCytokinesisTheoremCanonicalLaneLean
end HautevilleHouse