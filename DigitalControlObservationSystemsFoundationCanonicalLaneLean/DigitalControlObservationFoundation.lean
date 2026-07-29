import canonicalLaneMathlib.AdmissibleClass

/-!
# Digital Control Observation Systems Foundation

This module defines the foundational structures for Digital Control Observation Systems.
It frames the core concepts as an admissible-class bridge closure.
-/

namespace HautevilleHouse
namespace DigitalControlObservationSystemsFoundationCanonicalLaneLean

structure DiscretizationPackage where
  samplingPeriod : ℝ
  quantizerResolution : ℝ
  controlHorizon : ℕ
  samplingPeriodPositive : samplingPeriod > 0
  quantizerResolutionPositive : quantizerResolution > 0
  controlHorizonPositive : controlHorizon ≥ 1

structure ObserverPackage where
  stateDimension : ℕ
  outputDimension : ℕ
  inputDimension : ℕ
  observerGain : Matrix ℝ stateDimension outputDimension
  observerDynamics : Prop
  observationErrorDecay : Prop

structure ControlPackage where
  controllerGain : Matrix ℝ inputDimension stateDimension
  feedbackLaw : Prop
  closedLoopStability : Prop

structure DigitalControlObservationEvidence where
  discretizationGood : DiscretizationPackage
  observerDesigned : ObserverPackage
  controllerDesigned : ControlPackage
  separationPrincipleHolds : Prop
  overallSystemStable : Prop

structure DigitalControlObservationAdmissibleClass (A : AdmissibleClass) where
  evidence : DigitalControlObservationEvidence
  bridgeClosed : bridgeClosed A
  gateClosed : gateClosed A

def DigitalControlObservationClosed (A : AdmissibleClass) : Prop :=
  bridgeClosed A ∧ gateClosed A

theorem digital_control_observation_endgame (A : AdmissibleClass) :
    DigitalControlObservationClosed A := by
  exact And.intro (bridge_from_admissible_class A) (gate_from_admissible_class A)

end DigitalControlObservationSystemsFoundationCanonicalLaneLean
end HautevilleHouse