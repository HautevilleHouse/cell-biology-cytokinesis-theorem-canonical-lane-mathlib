import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CellBiologyCytokinesisTheoremCanonicalLaneLean

structure ActomyosinRingPackage where
  actinFilaments : Type
  myosinMotors : Type
  contractileForce : Prop
  ringAssembly : Prop
  ringConstriction : Prop
  ringDisassembly : Prop

structure ActomyosinRingEvidence (A : ActomyosinRingPackage) where
  contractileForceClosed : A.contractileForce
  ringAssemblyClosed : A.ringAssembly
  ringConstrictionClosed : A.ringConstriction
  ringDisassemblyClosed : A.ringDisassembly

def ActomyosinRingClosed (A : ActomyosinRingPackage) : Prop :=
  A.contractileForce ∧ A.ringAssembly ∧ A.ringConstriction ∧ A.ringDisassembly

theorem actomyosin_ring_closed_from_evidence (A : ActomyosinRingPackage) (E : ActomyosinRingEvidence A) : ActomyosinRingClosed A := by
  exact And.intro E.contractileForceClosed (And.intro E.ringAssemblyClosed (And.intro E.ringConstrictionClosed E.ringDisassemblyClosed))

end CellBiologyCytokinesisTheoremCanonicalLaneLean
end HautevilleHouse
