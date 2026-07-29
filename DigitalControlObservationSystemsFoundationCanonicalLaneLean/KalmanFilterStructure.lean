import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DigitalControlObservationSystemsFoundationCanonicalLaneLean

structure KalmanFilterStructure (M : ControlObservationModel) where
  stateEstimate : M.stateSpace
  estimateCovariance : Prop
  predictionStep : M.stateSpace → M.stateSpace
  updateStep : M.stateSpace → M.measurementSpace → M.stateSpace
  optimalGain : Prop
  innovationProcess : Prop

def KalmanFilterClosed (M : ControlObservationModel) (K : KalmanFilterStructure M) : Prop :=
  K.optimalGain ∧ K.innovationProcess

end DigitalControlObservationSystemsFoundationCanonicalLaneLean
end HautevilleHouse
