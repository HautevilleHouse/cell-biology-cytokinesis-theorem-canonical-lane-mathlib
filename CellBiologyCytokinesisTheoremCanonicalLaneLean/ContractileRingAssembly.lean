import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CellBiologyCytokinesisTheoremCanonicalLaneLean

structure ContractileRingPackage where
  actinPolymerization : Prop
  myosinIIActivation : Prop
  ringPositioning : Prop
  ringFormationComplete : Prop

structure ContractileRingEvidence (C : ContractileRingPackage) where
  actinPolymerizationClosed : C.actinPolymerization
  myosinIIActivationClosed : C.myosinIIActivation
  ringPositioningClosed : C.ringPositioning
  ringFormationCompleteClosed : C.ringFormationComplete

def ContractileRingClosed (C : ContractileRingPackage) : Prop :=
  C.actinPolymerization ∧ C.myosinIIActivation ∧ C.ringPositioning ∧ C.ringFormationComplete

theorem contractile_ring_closed_from_evidence (C : ContractileRingPackage) (E : ContractileRingEvidence C) :
    ContractileRingClosed C := by
  exact And.intro E.actinPolymerizationClosed
    (And.intro E.myosinIIActivationClosed
      (And.intro E.ringPositioningClosed E.ringFormationCompleteClosed))

end CellBiologyCytokinesisTheoremCanonicalLaneLean
end HautevilleHouse
