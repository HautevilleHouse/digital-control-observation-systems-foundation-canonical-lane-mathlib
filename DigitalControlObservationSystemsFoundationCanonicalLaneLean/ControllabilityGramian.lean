import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.DigitalControlObservationSystemsFoundationCanonicalLaneLean.ObservationStateSpace

namespace HautevilleHouse
namespace DigitalControlObservationSystemsFoundationCanonicalLaneLean

structure ControllabilityGramian {S : ObservationStateSpace} where
  gramianMatrix : Type w
  positiveDefinite : Prop
  reachableSubspaceSpanned : Prop

structure ControllabilityGramianEvidence {S : ObservationStateSpace} (G : ControllabilityGramian S) where
  positiveDefiniteClosed : G.positiveDefinite
  reachableSubspaceSpannedClosed : G.reachableSubspaceSpanned

def ControllabilityGramianClosed {S : ObservationStateSpace} (G : ControllabilityGramian S) : Prop :=
  G.positiveDefinite ∧ G.reachableSubspaceSpanned

theorem controllability_gramian_closed_from_evidence
    {S : ObservationStateSpace} (G : ControllabilityGramian S)
    (E : ControllabilityGramianEvidence G) : ControllabilityGramianClosed G := by
  exact And.intro E.positiveDefiniteClosed E.reachableSubspaceSpannedClosed

end DigitalControlObservationSystemsFoundationCanonicalLaneLean
end HautevilleHouse