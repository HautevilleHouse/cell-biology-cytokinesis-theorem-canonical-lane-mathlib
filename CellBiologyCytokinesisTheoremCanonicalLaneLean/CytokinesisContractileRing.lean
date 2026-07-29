import CellBiologyCytokinesisTheoremCanonicalLaneLean.CytokinesisAdmissibleClass

namespace HautevilleHouse
namespace CellBiologyCytokinesisTheoremCanonicalLaneLean

structure ContractileRingPackage where
  actinMyosinFilaments : Prop
  rhoGTPaseSignaling : Prop
  ringConstriction : Prop
  ringDisassembly : Prop

structure ContractileRingEvidence (R : ContractileRingPackage) where
  actinMyosinFilamentsClosed : R.actinMyosinFilaments
  rhoGTPaseSignalingClosed : R.rhoGTPaseSignaling
  ringConstrictionClosed : R.ringConstriction
  ringDisassemblyClosed : R.ringDisassembly

def ContractileRingClosed (R : ContractileRingPackage) : Prop :=
  R.actinMyosinFilaments ∧ R.rhoGTPaseSignaling ∧ R.ringConstriction ∧ R.ringDisassembly

theorem contractile_ring_closed_from_evidence (R : ContractileRingPackage) (E : ContractileRingEvidence R) :
    ContractileRingClosed R := by
  exact And.intro E.actinMyosinFilamentsClosed (And.intro E.rhoGTPaseSignalingClosed (And.intro E.ringConstrictionClosed E.ringDisassemblyClosed))

end CellBiologyCytokinesisTheoremCanonicalLaneLean
end HautevilleHouse