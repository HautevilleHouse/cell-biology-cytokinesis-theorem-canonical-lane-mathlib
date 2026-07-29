import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CellBiologyCytokinesisTheoremCanonicalLaneLean

structure RhoGTPaseSignalingPackage where
  rhoActivationZone : Prop
  rhoEffectors : Prop
  positiveFeedbackLoop : Prop
  spatialRestriction : Prop

structure RhoGTPaseSignalingEvidence (S : RhoGTPaseSignalingPackage) where
  rhoActivationZoneClosed : S.rhoActivationZone
  rhoEffectorsClosed : S.rhoEffectors
  positiveFeedbackLoopClosed : S.positiveFeedbackLoop
  spatialRestrictionClosed : S.spatialRestriction

def RhoGTPaseSignalingClosed (S : RhoGTPaseSignalingPackage) : Prop :=
  S.rhoActivationZone ∧ S.rhoEffectors ∧
  S.positiveFeedbackLoop ∧ S.spatialRestriction

theorem rho_gtpase_signaling_closed_from_evidence (S : RhoGTPaseSignalingPackage)
    (E : RhoGTPaseSignalingEvidence S) : RhoGTPaseSignalingClosed S := by
  exact And.intro E.rhoActivationZoneClosed
    (And.intro E.rhoEffectorsClosed
      (And.intro E.positiveFeedbackLoopClosed E.spatialRestrictionClosed))

end CellBiologyCytokinesisTheoremCanonicalLaneLean
end HautevilleHouse