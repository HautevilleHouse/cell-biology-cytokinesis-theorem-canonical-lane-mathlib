import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CellBiologyCytokinesisTheoremCanonicalLaneLean

structure CytokinesisAdmittedObject where
  cellType : Type
  divisionProcess : Prop
  contractileRingFormed : Prop
  abscissionCompleted : Prop
  conclusion : contractileRingFormed ∧ abscissionCompleted

structure AdmissibleClass where
  object : CytokinesisAdmittedObject
  endpointSatisfied : Prop
  remainderRecorded : Prop
  gateWitness : endpointSatisfied ∨ remainderRecorded

def admittedClosure (A : AdmissibleClass) : Prop :=
  CdkWitnessClosed A.object ∧ (A.endpointSatisfied ∨ A.remainderRecorded)

def CdkWitnessClosed (O : CytokinesisAdmittedObject) : Prop :=
  O.contractileRingFormed ∧ O.abscissionCompleted

end CellBiologyCytokinesisTheoremCanonicalLaneLean
end HautevilleHouse
