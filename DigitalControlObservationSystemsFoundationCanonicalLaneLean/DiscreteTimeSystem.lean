import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DigitalControlObservationSystemsFoundationCanonicalLaneLean

structure DiscreteTimeSystem (M : ControlObservationModel) where
  samplingPeriod : ℝ
  discreteDynamics : M.stateSpace → M.controlSpace → M.stateSpace
  discreteObservation : M.stateSpace → M.measurementSpace
  zeroOrderHold : Prop
  discretizationConsistent : Prop

def DiscreteTimeClosed (M : ControlObservationModel) (D : DiscreteTimeSystem M) : Prop :=
  D.zeroOrderHold ∧ D.discretizationConsistent

end DigitalControlObservationSystemsFoundationCanonicalLaneLean
end HautevilleHouse
