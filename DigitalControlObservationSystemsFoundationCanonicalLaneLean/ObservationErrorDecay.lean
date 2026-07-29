import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.DigitalControlObservationSystemsFoundationCanonicalLaneLean.DigitalControlObservationFoundation

/-!
# Observation Error Decay

This module captures the exponential decay of observation error under
admissible digital control observation systems.
-/

namespace HautevilleHouse
namespace DigitalControlObservationSystemsFoundationCanonicalLaneLean

structure ObservationErrorDecayPackage where
  lyapunovFunction : Type
  lyapunovDecreaseCondition : Prop
  exponentialDecayRate : ℝ
  decayRatePositive : exponentialDecayRate > 0
  observationErrorConverges : Prop

structure ObservationErrorDecayEvidence (P : ObservationErrorDecayPackage) where
  lyapunovDecreaseConditionClosed : P.lyapunovDecreaseCondition
  observationErrorConvergesClosed : P.observationErrorConverges

def ObservationErrorDecayClosed (P : ObservationErrorDecayPackage) : Prop :=
  P.lyapunovDecreaseCondition ∧ P.observationErrorConverges

theorem observation_error_decay_closed_from_evidence (P : ObservationErrorDecayPackage)
    (E : ObservationErrorDecayEvidence P) : ObservationErrorDecayClosed P := by
  exact And.intro E.lyapunovDecreaseConditionClosed E.observationErrorConvergesClosed

end DigitalControlObservationSystemsFoundationCanonicalLaneLean
end HautevilleHouse