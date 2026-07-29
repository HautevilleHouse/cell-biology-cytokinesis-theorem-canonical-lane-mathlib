import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CellBiologyCytokinesisTheoremCanonicalLaneLean

structure CytokinesisSignalingPackage where
  kinaseCascade : Type
  phosphataseActivity : Type
  rhoGtpaseCycle : Type
  contractileRingAssemblySignal : Prop
  constrictionSignal : Prop
  abscissionSignal : Prop

structure CytokinesisSignalingEvidence (S : CytokinesisSignalingPackage) where
  contractileRingAssemblySignalClosed : S.contractileRingAssemblySignal
  constrictionSignalClosed : S.constrictionSignal
  abscissionSignalClosed : S.abscissionSignal

def CytokinesisSignalingClosed (S : CytokinesisSignalingPackage) : Prop :=
  S.contractileRingAssemblySignal ∧ S.constrictionSignal ∧ S.abscissionSignal

theorem cytokinesis_signaling_closed_from_evidence (S : CytokinesisSignalingPackage) (E : CytokinesisSignalingEvidence S) : CytokinesisSignalingClosed S := by
  exact And.intro E.contractileRingAssemblySignalClosed (And.intro E.constrictionSignalClosed E.abscissionSignalClosed)

end CellBiologyCytokinesisTheoremCanonicalLaneLean
end HautevilleHouse
