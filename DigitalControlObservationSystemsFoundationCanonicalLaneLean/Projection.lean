import HautevilleHouse.DigitalControlObservationSystemsFoundationCanonicalLaneLean.ObservationObjects

namespace HautevilleHouse
namespace DigitalControlObservationSystemsFoundationCanonicalLaneLean

open HautevilleHouse.CanonicalLaneMathlibCore

def observationProjection : Projection ObservationEndgameState := {
  toFun := fun x => x,
  idempotent := by intro x; rfl
}

theorem observation_projection_idempotent (x : ObservationEndgameState) :
    observationProjection.toFun (observationProjection.toFun x) = observationProjection.toFun x := by
  exact observationProjection.idempotent x

end DigitalControlObservationSystemsFoundationCanonicalLaneLean
end HautevilleHouse