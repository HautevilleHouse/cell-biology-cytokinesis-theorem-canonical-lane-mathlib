import CytokinesisAdmissibleClass

namespace HautevilleHouse
namespace CellBiologyCytokinesisTheoremCanonicalLaneLean

structure MitoticSpindleCheckpointPackage where
  mad2Activation : Prop
  cdc20Inhibition : Prop
  anaphaseOnset : Prop
  chromosomeAttachment : Prop

structure MitoticSpindleCheckpointEvidence (P : MitoticSpindleCheckpointPackage) where
  mad2ActivationClosed : P.mad2Activation
  cdc20InhibitionClosed : P.cdc20Inhibition
  anaphaseOnsetClosed : P.anaphaseOnset
  chromosomeAttachmentClosed : P.chromosomeAttachment

def MitoticSpindleCheckpointClosed (P : MitoticSpindleCheckpointPackage) : Prop :=
  P.mad2Activation ∧ P.cdc20Inhibition ∧ P.anaphaseOnset ∧ P.chromosomeAttachment

theorem mitotic_spindle_checkpoint_closed_from_evidence
  (P : MitoticSpindleCheckpointPackage) (E : MitoticSpindleCheckpointEvidence P) :
  MitoticSpindleCheckpointClosed P :=
by
  exact And.intro E.mad2ActivationClosed
    (And.intro E.cdc20InhibitionClosed
      (And.intro E.anaphaseOnsetClosed E.chromosomeAttachmentClosed))

end CellBiologyCytokinesisTheoremCanonicalLaneLean
end HautevilleHouse