import CleavageFurrowIngression

namespace HautevilleHouse
namespace CellBiologyCytokinesisTheoremCanonicalLaneLean

structure AbscissionProcessPackage where
  esrtMembraneFission : Prop
  midbodyRemoval : Prop
  cytokineticDynein : Prop
  finalSeparation : Prop

structure AbscissionProcessEvidence (P : AbscissionProcessPackage) where
  esrtMembraneFissionClosed : P.esrtMembraneFission
  midbodyRemovalClosed : P.midbodyRemoval
  cytokineticDyneinClosed : P.cytokineticDynein
  finalSeparationClosed : P.finalSeparation

def AbscissionProcessClosed (P : AbscissionProcessPackage) : Prop :=
  P.esrtMembraneFission ∧ P.midbodyRemoval ∧ P.cytokineticDynein ∧ P.finalSeparation

theorem abscission_process_closed_from_evidence
  (P : AbscissionProcessPackage) (E : AbscissionProcessEvidence P) :
  AbscissionProcessClosed P :=
by
  exact And.intro E.esrtMembraneFissionClosed
    (And.intro E.midbodyRemovalClosed
      (And.intro E.cytokineticDyneinClosed E.finalSeparationClosed))

end CellBiologyCytokinesisTheoremCanonicalLaneLean
end HautevilleHouse