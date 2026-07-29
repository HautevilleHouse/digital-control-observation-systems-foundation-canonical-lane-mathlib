import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.DigitalControlObservationSystemsFoundationCanonicalLaneLean.TheoremStatement

namespace HautevilleHouse
namespace DigitalControlObservationSystemsFoundationCanonicalLaneLean

open HautevilleHouse.CanonicalLaneMathlibCore

structure ObservationSpace where
  carrier : Type
  topology : TopologicalSpace carrier

structure AdmittedObject where
  space : ObservationSpace
  controlSystem : Prop
  observable : Prop
  observationType : Type
  observationTopology : TopologicalSpace observationType
  observationIsClosed : Prop
  conclusion : observationIsClosed

structure ObservationEndgameState where
  object : AdmittedObject

def observationClosed (O : AdmittedObject) : Prop :=
  O.observationIsClosed

end DigitalControlObservationSystemsFoundationCanonicalLaneLean
end HautevilleHouse