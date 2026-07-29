import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CellBiologyCytokinesisTheoremCanonicalLaneLean

structure ActomyosinDynamicsPackage where
  myosinLightChainPhosphorylation : Prop
  actinPolymerizationTurnover : Prop
  crossBridgeCycling : Prop
  forceTransmissionToMembrane : Prop
  corticalFlowGeneration : Prop

structure ActomyosinDynamicsEvidence (P : ActomyosinDynamicsPackage) where
  myosinLightChainPhosphorylationClosed : P.myosinLightChainPhosphorylation
  actinPolymerizationTurnoverClosed : P.actinPolymerizationTurnover
  crossBridgeCyclingClosed : P.crossBridgeCycling
  forceTransmissionToMembraneClosed : P.forceTransmissionToMembrane
  corticalFlowGenerationClosed : P.corticalFlowGeneration

def ActomyosinDynamicsClosed (P : ActomyosinDynamicsPackage) : Prop :=
  P.myosinLightChainPhosphorylation ∧ P.actinPolymerizationTurnover ∧ P.crossBridgeCycling ∧ P.forceTransmissionToMembrane ∧ P.corticalFlowGeneration

theorem actomyosin_dynamics_closed_from_evidence (P : ActomyosinDynamicsPackage) (E : ActomyosinDynamicsEvidence P) : ActomyosinDynamicsClosed P := by
  exact And.intro E.myosinLightChainPhosphorylationClosed (And.intro E.actinPolymerizationTurnoverClosed (And.intro E.crossBridgeCyclingClosed (And.intro E.forceTransmissionToMembraneClosed E.corticalFlowGenerationClosed)))

end CellBiologyCytokinesisTheoremCanonicalLaneLean
end HautevilleHouse