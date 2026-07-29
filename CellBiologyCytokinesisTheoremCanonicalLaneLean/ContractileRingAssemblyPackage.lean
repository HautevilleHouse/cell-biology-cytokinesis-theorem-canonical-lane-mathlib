import CellBiologyCytokinesisTheoremCanonicalLaneLean.CytoskeletonDynamicsPackage

namespace HautevilleHouse
namespace CellBiologyCytokinesisTheoremCanonicalLaneLean

structure ContractileRingAssemblyPackage {G : CellMembranePackage}
    (F : CytoskeletonDynamicsPackage G) where
  ringFormation : Prop
  midzonePlacement : Prop
  constrictionForce : Prop
  disassemblyTiming : Prop

structure ContractileRingAssemblyEvidence {G : CellMembranePackage}
    {F : CytoskeletonDynamicsPackage G} (S : ContractileRingAssemblyPackage F) where
  ringFormationClosed : S.ringFormation
  midzonePlacementClosed : S.midzonePlacement
  constrictionForceClosed : S.constrictionForce
  disassemblyTimingClosed : S.disassemblyTiming

def ContractileRingAssemblyClosed {G : CellMembranePackage}
    {F : CytoskeletonDynamicsPackage G} (S : ContractileRingAssemblyPackage F) : Prop :=
  S.ringFormation ∧ S.midzonePlacement ∧ S.constrictionForce ∧ S.disassemblyTiming

theorem contractile_ring_assembly_closed_from_evidence
    {G : CellMembranePackage} {F : CytoskeletonDynamicsPackage G}
    (S : ContractileRingAssemblyPackage F)
    (E : ContractileRingAssemblyEvidence S) :
    ContractileRingAssemblyClosed S := by
  exact And.intro E.ringFormationClosed
    (And.intro E.midzonePlacementClosed
      (And.intro E.constrictionForceClosed E.disassemblyTimingClosed))

end CellBiologyCytokinesisTheoremCanonicalLaneLean
end HautevilleHouse