import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.DigitalControlObservationSystemsFoundationCanonicalLaneLean.ControllabilityGramian
import HautevilleHouse.DigitalControlObservationSystemsFoundationCanonicalLaneLean.ObservabilityDecomposition

namespace HautevilleHouse
namespace DigitalControlObservationSystemsFoundationCanonicalLaneLean

structure DualReachability {S : ObservationStateSpace}
    (G : ControllabilityGramian S) (D : ObservabilityDecomposition S) where
  dualityPairing : G.reachableSubspaceSpanned ∧ D.detectabilityCondition
  observabilityImpliesControllabilityOfDual : Prop
  controllabilityImpliesObservabilityOfDual : Prop

def DualReachabilityClosed {S : ObservationStateSpace}
    {G : ControllabilityGramian S} {D : ObservabilityDecomposition S}
    (R : DualReachability G D) : Prop :=
  R.observabilityImpliesControllabilityOfDual ∧ R.controllabilityImpliesObservabilityOfDual

structure DualReachabilityEvidence {S : ObservationStateSpace}
    {G : ControllabilityGramian S} {D : ObservabilityDecomposition S}
    (R : DualReachability G D) where
  observabilityImpliesControllabilityOfDualClosed : R.observabilityImpliesControllabilityOfDual
  controllabilityImpliesObservabilityOfDualClosed : R.controllabilityImpliesObservabilityOfDual

theorem dual_reachability_closed_from_evidence
    {S : ObservationStateSpace} {G : ControllabilityGramian S} {D : ObservabilityDecomposition S}
    (R : DualReachability G D) (E : DualReachabilityEvidence R) : DualReachabilityClosed R := by
  exact And.intro E.observabilityImpliesControllabilityOfDualClosed
    E.controllabilityImpliesObservabilityOfDualClosed

end DigitalControlObservationSystemsFoundationCanonicalLaneLean
end HautevilleHouse