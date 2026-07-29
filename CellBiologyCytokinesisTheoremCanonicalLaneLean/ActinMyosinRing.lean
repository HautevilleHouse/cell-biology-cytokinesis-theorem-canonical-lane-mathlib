import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CellBiologyCytokinesisTheoremCanonicalLaneLean

structure ActinMyosinRingPackage where
  actinFilamentContractility : Prop
  myosinIILocalization : Prop
  ringConstrictionRate : Prop
  assemblySignals : Prop

structure ActinMyosinRingEvidence (R : ActinMyosinRingPackage) where
  actinFilamentContractilityClosed : R.actinFilamentContractility
  myosinIILocalizationClosed : R.myosinIILocalization
  ringConstrictionRateClosed : R.ringConstrictionRate
  assemblySignalsClosed : R.assemblySignals

def ActinMyosinRingClosed (R : ActinMyosinRingPackage) : Prop :=
  R.actinFilamentContractility ∧ R.myosinIILocalization ∧
  R.ringConstrictionRate ∧ R.assemblySignals

theorem actin_myosin_ring_closed_from_evidence (R : ActinMyosinRingPackage)
    (E : ActinMyosinRingEvidence R) : ActinMyosinRingClosed R := by
  exact And.intro E.actinFilamentContractilityClosed
    (And.intro E.myosinIILocalizationClosed
      (And.intro E.ringConstrictionRateClosed E.assemblySignalsClosed))

end CellBiologyCytokinesisTheoremCanonicalLaneLean
end HautevilleHouse