import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CellBiologyCytokinesisTheoremCanonicalLaneLean

def bridgeClosed (A : AdmissibleClass) : Prop :=
  CdkWitnessClosed A.object

theorem bridge_from_admissible_class (A : AdmissibleClass) :
    bridgeClosed A := by
  refine A.object.conclusion

end CellBiologyCytokinesisTheoremCanonicalLaneLean
end HautevilleHouse
