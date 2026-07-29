import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DigitalControlObservationSystemsFoundationCanonicalLaneLean

structure ControllabilityCondition (M : ControlObservationModel) where
  reachableSet : Set M.stateSpace
  controllabilityGramian : Prop
  fullRankCondition : Prop

def ControllabilityClosed (M : ControlObservationModel) (C : ControllabilityCondition M) : Prop :=
  C.fullRankCondition ∧ C.controllabilityGramian

structure ObservabilityCondition (M : ControlObservationModel) where
  observabilityGramian : Prop
  detectabilityCondition : Prop

def ObservabilityClosed (M : ControlObservationModel) (O : ObservabilityCondition M) : Prop :=
  O.observabilityGramian ∧ O.detectabilityCondition

structure ControllabilityObservationPair (M : ControlObservationModel) where
  controller : ControllabilityCondition M
  observer : ObservabilityCondition M
  separationPrincipleHolds : Prop

def ControllabilityObservationBridgeClosed (M : ControlObservationModel) (P : ControllabilityObservationPair M) : Prop :=
  ControllabilityClosed M P.controller ∧ ObservabilityClosed M P.observer ∧ P.separationPrincipleHolds

end DigitalControlObservationSystemsFoundationCanonicalLaneLean
end HautevilleHouse
