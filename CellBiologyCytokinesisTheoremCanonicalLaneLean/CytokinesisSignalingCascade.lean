import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CellBiologyCytokinesisTheoremCanonicalLaneLean

structure CytokinesisSignalingCascadePackage where
  rhoGtpaseActivation : Prop
  forminRecruitment : Prop
  myosinIIActivation : Prop
  septinScaffolding : Prop
  anillinStabilization : Prop

structure CytokinesisSignalingCascadeEvidence (C : CytokinesisSignalingCascadePackage) where
  rhoGtpaseActivationClosed : C.rhoGtpaseActivation
  forminRecruitmentClosed : C.forminRecruitment
  myosinIIActivationClosed : C.myosinIIActivation
  septinScaffoldingClosed : C.septinScaffolding
  anillinStabilizationClosed : C.anillinStabilization

def CytokinesisSignalingCascadeClosed (C : CytokinesisSignalingCascadePackage) : Prop :=
  C.rhoGtpaseActivation ∧ C.forminRecruitment ∧ C.myosinIIActivation ∧ C.septinScaffolding ∧ C.anillinStabilization

theorem cytokinesis_signaling_cascade_closed_from_evidence (C : CytokinesisSignalingCascadePackage) (E : CytokinesisSignalingCascadeEvidence C) :
    CytokinesisSignalingCascadeClosed C := by
  exact And.intro E.rhoGtpaseActivationClosed (And.intro E.forminRecruitmentClosed (And.intro E.myosinIIActivationClosed (And.intro E.septinScaffoldingClosed E.anillinStabilizationClosed)))

end CellBiologyCytokinesisTheoremCanonicalLaneLean
end HautevilleHouse