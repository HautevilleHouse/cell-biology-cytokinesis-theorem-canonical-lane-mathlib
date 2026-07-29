import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CellBiologyCytokinesisTheoremCanonicalLaneLean

structure MidbodyAssemblyPackage where
  centralSpindleAssembly : Prop
  midbodyFormation : Prop
  abscissionMachineryRecruited : Prop
  membraneFission : Prop
  centralSpindleAssemblyTerm : centralSpindleAssembly
  midbodyFormationTerm : midbodyFormation
  abscissionMachineryRecruitedTerm : abscissionMachineryRecruited
  membraneFissionTerm : membraneFission

def MidbodyAssemblyClosed (M : MidbodyAssemblyPackage) : Prop :=
  M.centralSpindleAssembly ∧ M.midbodyFormation ∧ M.abscissionMachineryRecruited ∧ M.membraneFission

theorem midbody_assembly_closed_from_evidence (M : MidbodyAssemblyPackage) : MidbodyAssemblyClosed M :=
  And.intro M.centralSpindleAssemblyTerm (And.intro M.midbodyFormationTerm (And.intro M.abscissionMachineryRecruitedTerm M.membraneFissionTerm))

end CellBiologyCytokinesisTheoremCanonicalLaneLean
end HautevilleHouse