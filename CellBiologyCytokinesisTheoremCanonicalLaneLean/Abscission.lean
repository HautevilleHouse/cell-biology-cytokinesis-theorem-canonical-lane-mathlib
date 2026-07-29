import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CellBiologyCytokinesisTheoremCanonicalLaneLean

structure AbscissionPackage where
  escrtIIIAssembly : Prop
  membraneFission : Prop
  midbodyRemnant : Prop
  timingControl : Prop

structure AbscissionEvidence (A : AbscissionPackage) where
  escrtIIIAssemblyClosed : A.escrtIIIAssembly
  membraneFissionClosed : A.membraneFission
  midbodyRemnantClosed : A.midbodyRemnant
  timingControlClosed : A.timingControl

def AbscissionClosed (A : AbscissionPackage) : Prop :=
  A.escrtIIIAssembly ∧ A.membraneFission ∧
  A.midbodyRemnant ∧ A.timingControl

theorem abscission_closed_from_evidence (A : AbscissionPackage)
    (E : AbscissionEvidence A) : AbscissionClosed A := by
  exact And.intro E.escrtIIIAssemblyClosed
    (And.intro E.membraneFissionClosed
      (And.intro E.midbodyRemnantClosed E.timingControlClosed))

end CellBiologyCytokinesisTheoremCanonicalLaneLean
end HautevilleHouse