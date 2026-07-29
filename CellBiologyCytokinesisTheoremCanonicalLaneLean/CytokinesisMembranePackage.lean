import Mathlib.Topology.Basic

namespace HautevilleHouse
namespace CellBiologyCytokinesisTheoremCanonicalLaneLean

structure CellMembranePackage where
  cell : Type u
  topology : TopologicalSpace cell
  membrane : Type v
  membraneProteins : Type w
  lipidBilayer : Prop
  transmembraneProteins : Prop
  membraneCurvatureRegulation : Prop

structure CellMembraneEvidence (G : CellMembranePackage) where
  lipidBilayerClosed : G.lipidBilayer
  transmembraneProteinsClosed : G.transmembraneProteins
  membraneCurvatureRegulationClosed : G.membraneCurvatureRegulation

def CellMembraneClosed (G : CellMembranePackage) : Prop :=
  G.lipidBilayer ∧ G.transmembraneProteins ∧ G.membraneCurvatureRegulation

theorem cell_membrane_closed_from_evidence
    (G : CellMembranePackage) (E : CellMembraneEvidence G) :
    CellMembraneClosed G := by
  exact And.intro E.lipidBilayerClosed
    (And.intro E.transmembraneProteinsClosed E.membraneCurvatureRegulationClosed)

end CellBiologyCytokinesisTheoremCanonicalLaneLean
end HautevilleHouse