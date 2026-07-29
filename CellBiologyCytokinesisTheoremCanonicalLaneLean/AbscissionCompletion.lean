import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CellBiologyCytokinesisTheoremCanonicalLaneLean

structure AbscissionPackage where
  midbodyRemoval : Prop
  membraneFission : Prop
  cytokineticAbscissionComplete : Prop

structure AbscissionEvidence (A : AbscissionPackage) where
  midbodyRemovalClosed : A.midbodyRemoval
  membraneFissionClosed : A.membraneFission
  cytokineticAbscissionCompleteClosed : A.cytokineticAbscissionComplete

def AbscissionClosed (A : AbscissionPackage) : Prop :=
  A.midbodyRemoval ∧ A.membraneFission ∧ A.cytokineticAbscissionComplete

theorem abscission_closed_from_evidence (A : AbscissionPackage) (E : AbscissionEvidence A) :
    AbscissionClosed A := by
  exact And.intro E.midbodyRemovalClosed
    (And.intro E.membraneFissionClosed E.cytokineticAbscissionCompleteClosed)

end CellBiologyCytokinesisTheoremCanonicalLaneLean
end HautevilleHouse
