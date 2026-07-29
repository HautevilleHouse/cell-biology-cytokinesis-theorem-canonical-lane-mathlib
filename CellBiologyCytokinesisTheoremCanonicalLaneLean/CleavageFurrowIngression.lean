import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CellBiologyCytokinesisTheoremCanonicalLaneLean

structure CleavageFurrowIngressionPackage where
  furrowInitiationSignal : Prop
  actomyosinConstriction : Prop
  furrowStability : Prop
  membraneInsertion : Prop
  furrowInitiationSignalTerm : furrowInitiationSignal
  actomyosinConstrictionTerm : actomyosinConstriction
  furrowStabilityTerm : furrowStability
  membraneInsertionTerm : membraneInsertion

def CleavageFurrowIngressionClosed (F : CleavageFurrowIngressionPackage) : Prop :=
  F.furrowInitiationSignal ∧ F.actomyosinConstriction ∧ F.furrowStability ∧ F.membraneInsertion

theorem cleavage_furrow_ingression_closed_from_evidence (F : CleavageFurrowIngressionPackage) : CleavageFurrowIngressionClosed F :=
  And.intro F.furrowInitiationSignalTerm (And.intro F.actomyosinConstrictionTerm (And.intro F.furrowStabilityTerm F.membraneInsertionTerm))

end CellBiologyCytokinesisTheoremCanonicalLaneLean
end HautevilleHouse