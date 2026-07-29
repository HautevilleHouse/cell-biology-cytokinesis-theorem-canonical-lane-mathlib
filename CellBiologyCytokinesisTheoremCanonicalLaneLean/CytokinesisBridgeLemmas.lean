import CellBiologyCytokinesisTheoremCanonicalLaneLean.CytokinesisAdmissibleClass

namespace HautevilleHouse
namespace CellBiologyCytokinesisTheoremCanonicalLaneLean

def bridgeClosed (A : AdmissibleClass) : Prop :=
  cytokinesisWitnessClosed A.object

theorem bridge_from_admissible_class (A : AdmissibleClass) :
    bridgeClosed A := by
  exact A.object.cytokinesisWitness

end CellBiologyCytokinesisTheoremCanonicalLaneLean
end HautevilleHouse