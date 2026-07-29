import HautevilleHouse.DigitalControlObservationSystemsFoundationCanonicalLaneLean.ControllabilityPackage

/-!
# Observer Design Package
-/

namespace HautevilleHouse
namespace DigitalControlObservationSystemsFoundationCanonicalLaneLean

structure ObserverDesignPackage (C : ControllabilityPackage) where
  observerGain : Prop
  errorDynamics : Prop
  stabilityCondition : Prop
  separationPrinciple : Prop

structure ObserverDesignEvidence {C : ControllabilityPackage} (O : ObserverDesignPackage C) where
  observerGainClosed : O.observerGain
  errorDynamicsClosed : O.errorDynamics
  stabilityConditionClosed : O.stabilityCondition
  separationPrincipleClosed : O.separationPrinciple

def ObserverDesignClosed {C : ControllabilityPackage} (O : ObserverDesignPackage C) : Prop :=
  O.observerGain ∧ O.errorDynamics ∧ O.stabilityCondition ∧ O.separationPrinciple

theorem observer_design_closed_from_evidence {C : ControllabilityPackage} (O : ObserverDesignPackage C) (E : ObserverDesignEvidence O) :
    ObserverDesignClosed O := by
  exact And.intro E.observerGainClosed (And.intro E.errorDynamicsClosed (And.intro E.stabilityConditionClosed E.separationPrincipleClosed))

end DigitalControlObservationSystemsFoundationCanonicalLaneLean
end HautevilleHouse