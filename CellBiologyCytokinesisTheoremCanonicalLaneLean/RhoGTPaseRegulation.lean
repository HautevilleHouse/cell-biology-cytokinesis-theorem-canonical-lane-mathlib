import HautevilleHouse.CellBiologyCytokinesisTheoremCanonicalLaneLean.AdmissibleClass

/-!
# Rho GTPase Regulation Package
-/

namespace HautevilleHouse
namespace CellBiologyCytokinesisTheoremCanonicalLaneLean

structure RhoGTPaseRegulationPackage where
  rhoActivationByGEF : Prop
  rhoInactivationByGAP : Prop
  downstreamEffectorActivation : Prop
  ringAssemblyControlled : Prop

structure RhoGTPaseRegulationEvidence (R : RhoGTPaseRegulationPackage) where
  rhoActivationByGEFClosed : R.rhoActivationByGEF
  rhoInactivationByGAPClosed : R.rhoInactivationByGAP
  downstreamEffectorActivationClosed : R.downstreamEffectorActivation
  ringAssemblyControlledClosed : R.ringAssemblyControlled

def RhoGTPaseRegulationClosed (R : RhoGTPaseRegulationPackage) : Prop :=
  R.rhoActivationByGEF ∧ R.rhoInactivationByGAP ∧
  R.downstreamEffectorActivation ∧ R.ringAssemblyControlled

theorem rho_gtpase_regulation_closed_from_evidence
    (R : RhoGTPaseRegulationPackage) (E : RhoGTPaseRegulationEvidence R) :
    RhoGTPaseRegulationClosed R := by
  exact And.intro E.rhoActivationByGEFClosed
    (And.intro E.rhoInactivationByGAPClosed
      (And.intro E.downstreamEffectorActivationClosed
        E.ringAssemblyControlledClosed))

end CellBiologyCytokinesisTheoremCanonicalLaneLean
end HautevilleHouse