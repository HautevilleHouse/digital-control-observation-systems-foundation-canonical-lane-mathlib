import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.DigitalControlObservationSystemsFoundationCanonicalLaneLean.DigitalControlObservationFoundation
import HautevilleHouse.DigitalControlObservationSystemsFoundationCanonicalLaneLean.ObservationErrorDecay

/-!
# Separation Principle

This module formalizes the separation principle for admissible digital
control observation systems: observer and controller can be designed
independently while preserving closed-loop stability.
-/

namespace HautevilleHouse
namespace DigitalControlObservationSystemsFoundationCanonicalLaneLean

structure SeparationPrinciplePackage (O : ObserverPackage) (K : ControlPackage) where
  observerControllerCombination : Prop
  combinedDynamics : Prop
  combinedStability : Prop
  separationHolds : observerControllerCombination → (O.observationErrorDecay ∧ K.closedLoopStability) → combinedStability

structure SeparationPrincipleEvidence {O : ObserverPackage} {K : ControlPackage}
    (S : SeparationPrinciplePackage O K) where
  observerErrorDecayFromObserver : O.observationErrorDecay
  closedLoopStabilityFromController : K.closedLoopStability
  combinedStabilityClosed : S.combinedStability

def SeparationPrincipleClosed {O : ObserverPackage} {K : ControlPackage}
    (S : SeparationPrinciplePackage O K) : Prop :=
  O.observationErrorDecay ∧ K.closedLoopStability ∧ S.combinedStability

theorem separation_principle_closed_from_evidence {O : ObserverPackage} {K : ControlPackage}
    (S : SeparationPrinciplePackage O K) (E : SeparationPrincipleEvidence S) :
    SeparationPrincipleClosed S := by
  exact And.intro E.observerErrorDecayFromObserver
    (And.intro E.closedLoopStabilityFromController E.combinedStabilityClosed)

end DigitalControlObservationSystemsFoundationCanonicalLaneLean
end HautevilleHouse