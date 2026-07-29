import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CellBiologyCytokinesisTheoremCanonicalLaneLean

structure CellCycleState where
  interphase : Prop
  mitosisEntry : Prop
  anaphase : Prop
  telophase : Prop
  cytokinesisInitiated : Prop
  abscission : Prop

structure ContractileRing where
  actinFilaments : Prop
  myosinII : Prop
  crossLinkers : Prop
  ringFormation : Prop
  ringContraction : Prop
  ringDisassembly : Prop

structure CleavageFurrow where
  membraneIngression : Prop
  midbodyFormation : Prop
  abscissionCompletion : Prop

structure CytokinesisProcess where
  cellState : CellCycleState
  ring : ContractileRing
  furrow : CleavageFurrow
  spatioTemporalCoordination : Prop
  mechanicalForceGeneration : Prop
  regulatorySignaling : Prop

structure CytokinesisAdmittedObject where
  process : CytokinesisProcess
  conclusion : Prop

structure CytokinesisEndgameState where
  object : CytokinesisAdmittedObject

def CytokinesisWitnessClosed (O : CytokinesisAdmittedObject) : Prop :=
  O.conclusion

end CellBiologyCytokinesisTheoremCanonicalLaneLean
end HautevilleHouse