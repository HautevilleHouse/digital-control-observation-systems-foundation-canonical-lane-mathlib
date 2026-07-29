import DigitalControlObservationSystemsFoundationCanonicalLaneLean.MathlibObjects

namespace HautevilleHouse
namespace DigitalControlObservationSystemsFoundationCanonicalLaneLean

structure AdmissibleClass where
  object : DigitalControlAdmittedObject
  endpointSatisfied : Prop
  remainderRecorded : Prop
  gateWitness : endpointSatisfied ∨ remainderRecorded

def admittedClosure (A : AdmissibleClass) : Prop :=
  DigitalControlWitnessClosed A.object ∧ (A.endpointSatisfied ∨ A.remainderRecorded)

end DigitalControlObservationSystemsFoundationCanonicalLaneLean
end HautevilleHouse
