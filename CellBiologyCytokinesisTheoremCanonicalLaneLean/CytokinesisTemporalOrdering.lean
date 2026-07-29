import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CellBiologyCytokinesisTheoremCanonicalLaneLean

structure TemporalOrderingPackage where
  earlyCycleEvents : Prop
  actomyosinRingConstriction : Prop
  midbodyFormation : Prop
  abscission : Prop
  orderCorrectness : Prop

structure TemporalOrderingEvidence (T : TemporalOrderingPackage) where
  earlyCycleEventsClosed : T.earlyCycleEvents
  actomyosinRingConstrictionClosed : T.actomyosinRingConstriction
  midbodyFormationClosed : T.midbodyFormation
  abscissionClosed : T.abscission
  orderCorrectnessClosed : T.orderCorrectness

def TemporalOrderingClosed (T : TemporalOrderingPackage) : Prop :=
  T.earlyCycleEvents ∧ T.actomyosinRingConstriction ∧ T.midbodyFormation ∧ T.abscission ∧ T.orderCorrectness

theorem temporal_ordering_closed_from_evidence (T : TemporalOrderingPackage) (E : TemporalOrderingEvidence T) : TemporalOrderingClosed T := by
  exact And.intro E.earlyCycleEventsClosed (And.intro E.actomyosinRingConstrictionClosed (And.intro E.midbodyFormationClosed (And.intro E.abscissionClosed E.orderCorrectnessClosed)))

end CellBiologyCytokinesisTheoremCanonicalLaneLean
end HautevilleHouse
