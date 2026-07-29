import MitoticSpindleCheckpoint

namespace HautevilleHouse
namespace CellBiologyCytokinesisTheoremCanonicalLaneLean

structure ContractileRingFormationPackage where
  actinMyosinRecruitment : Prop
  ringConstriction : Prop
  midbodyFormation : Prop
  septinScaffold : Prop

structure ContractileRingFormationEvidence (P : ContractileRingFormationPackage) where
  actinMyosinRecruitmentClosed : P.actinMyosinRecruitment
  ringConstrictionClosed : P.ringConstriction
  midbodyFormationClosed : P.midbodyFormation
  septinScaffoldClosed : P.septinScaffold

def ContractileRingFormationClosed (P : ContractileRingFormationPackage) : Prop :=
  P.actinMyosinRecruitment ∧ P.ringConstriction ∧ P.midbodyFormation ∧ P.septinScaffold

theorem contractile_ring_formation_closed_from_evidence
  (P : ContractileRingFormationPackage) (E : ContractileRingFormationEvidence P) :
  ContractileRingFormationClosed P :=
by
  exact And.intro E.actinMyosinRecruitmentClosed
    (And.intro E.ringConstrictionClosed
      (And.intro E.midbodyFormationClosed E.septinScaffoldClosed))

end CellBiologyCytokinesisTheoremCanonicalLaneLean
end HautevilleHouse