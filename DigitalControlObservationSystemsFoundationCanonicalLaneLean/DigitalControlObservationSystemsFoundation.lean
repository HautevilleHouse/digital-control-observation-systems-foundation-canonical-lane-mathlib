import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DigitalControlObservationSystemsFoundationCanonicalLaneLean

structure AdmissibleClass where
  object : AdmittedObject
  endpointSatisfied : Prop
  remainderRecorded : Prop
  gateWitness : endpointSatisfied ∨ remainderRecorded

def admittedClosure (A : AdmissibleClass) : Prop :=
  observationClosed A.object ∧ (A.endpointSatisfied ∨ A.remainderRecorded)

end DigitalControlObservationSystemsFoundationCanonicalLaneLean
end HautevilleHouse