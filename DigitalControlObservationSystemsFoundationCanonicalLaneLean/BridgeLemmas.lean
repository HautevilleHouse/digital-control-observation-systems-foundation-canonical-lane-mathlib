import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.DigitalControlObservationSystemsFoundationCanonicalLaneLean.Projection

namespace HautevilleHouse
namespace DigitalControlObservationSystemsFoundationCanonicalLaneLean

def bridgeClosed (A : AdmissibleClass) : Prop :=
  observationClosed A.object

theorem bridge_from_admissible_class (A : AdmissibleClass) :
    bridgeClosed A := by
  exact A.object.conclusion

end DigitalControlObservationSystemsFoundationCanonicalLaneLean
end HautevilleHouse