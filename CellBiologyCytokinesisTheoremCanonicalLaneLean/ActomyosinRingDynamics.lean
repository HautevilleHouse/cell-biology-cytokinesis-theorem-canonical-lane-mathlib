import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CellBiologyCytokinesisTheoremCanonicalLaneLean

structure ActomyosinRingDynamicsPackage where
  ringAssembly : Prop
  contractileForce : Prop
  constrictionRate : Prop
  disassembly : Prop

structure ActomyosinRingDynamicsEvidence (A : ActomyosinRingDynamicsPackage) where
  ringAssemblyClosed : A.ringAssembly
  contractileForceClosed : A.contractileForce
  constrictionRateClosed : A.constrictionRate
  disassemblyClosed : A.disassembly

def ActomyosinRingDynamicsClosed (A : ActomyosinRingDynamicsPackage) : Prop :=
  A.ringAssembly ∧ A.contractileForce ∧ A.constrictionRate ∧ A.disassembly

theorem actomyosin_ring_dynamics_closed_from_evidence (A : ActomyosinRingDynamicsPackage) (E : ActomyosinRingDynamicsEvidence A) :
    ActomyosinRingDynamicsClosed A := by
  exact And.intro E.ringAssemblyClosed (And.intro E.contractileForceClosed (And.intro E.constrictionRateClosed E.disassemblyClosed))

end CellBiologyCytokinesisTheoremCanonicalLaneLean
end HautevilleHouse