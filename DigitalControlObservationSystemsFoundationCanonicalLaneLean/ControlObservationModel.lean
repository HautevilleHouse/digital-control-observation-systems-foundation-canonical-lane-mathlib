import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DigitalControlObservationSystemsFoundationCanonicalLaneLean

structure ControlObservationModel where
  stateSpace : Type u
  measurementSpace : Type v
  controlSpace : Type w
  dynamics : stateSpace → controlSpace → stateSpace
  observation : stateSpace → measurementSpace
  initialDistribution : stateSpace → ℝ
  noiseModel : Prop

def ControlObservationModelClosed (M : ControlObservationModel) : Prop :=
  M.noiseModel

end DigitalControlObservationSystemsFoundationCanonicalLaneLean
end HautevilleHouse
