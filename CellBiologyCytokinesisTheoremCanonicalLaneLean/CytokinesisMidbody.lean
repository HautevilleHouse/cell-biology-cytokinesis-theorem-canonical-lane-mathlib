import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CellBiologyCytokinesisTheoremCanonicalLaneLean

structure MidbodyPackage where
  midbodyStructure : Type
  abscissionSignal : Prop
  abscissionExecution : Prop
  postAbscissionSealing : Prop

structure MidbodyEvidence (M : MidbodyPackage) where
  abscissionSignalClosed : M.abscissionSignal
  abscissionExecutionClosed : M.abscissionExecution
  postAbscissionSealingClosed : M.postAbscissionSealing

def MidbodyClosed (M : MidbodyPackage) : Prop :=
  M.abscissionSignal ∧ M.abscissionExecution ∧ M.postAbscissionSealing

theorem midbody_closed_from_evidence (M : MidbodyPackage) (E : MidbodyEvidence M) : MidbodyClosed M := by
  exact And.intro E.abscissionSignalClosed (And.intro E.abscissionExecutionClosed E.postAbscissionSealingClosed)

end CellBiologyCytokinesisTheoremCanonicalLaneLean
end HautevilleHouse
