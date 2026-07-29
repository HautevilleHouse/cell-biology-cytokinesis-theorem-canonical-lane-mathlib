import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CellBiologyCytokinesisTheoremCanonicalLaneLean

def ConstrainedCytokinesisClosure (A : AdmissibleClass) : Prop :=
  bridgeClosed A ∧ gateClosed A

theorem constrained_cytokinesis_endgame (A : AdmissibleClass) :
    ConstrainedCytokinesisClosure A := by
  exact And.intro (bridge_from_admissible_class A) (gate_from_admissible_class A)

end CellBiologyCytokinesisTheoremCanonicalLaneLean
end HautevilleHouse
