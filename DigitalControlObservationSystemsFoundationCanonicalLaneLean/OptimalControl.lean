import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DigitalControlObservationSystemsFoundationCanonicalLaneLean

structure OptimalControl (M : ControlObservationModel) where
  costFunctional : (M.stateSpace → M.controlSpace → ℝ) → ℝ
  horizon : ℕ
  valueFunction : M.stateSpace → ℝ
  hjbEquationSatisfied : Prop

def OptimalControlClosed (M : ControlObservationModel) (O : OptimalControl M) : Prop :=
  O.hjbEquationSatisfied

end DigitalControlObservationSystemsFoundationCanonicalLaneLean
end HautevilleHouse
