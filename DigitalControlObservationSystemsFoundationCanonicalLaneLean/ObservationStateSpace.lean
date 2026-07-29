import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DigitalControlObservationSystemsFoundationCanonicalLaneLean

structure ObservationStateSpace where
  stateType : Type u
  observationType : Type v
  dynamics : stateType → stateType
  observationMap : stateType → observationType
  controlled : Bool
  observed : Bool

structure ObservationStateSpaceEvidence (S : ObservationStateSpace) where
  dynamicsControlled : S.controlled
  observationConsistent : S.observed

def ObservationStateSpaceClosed (S : ObservationStateSpace) : Prop :=
  S.controlled ∧ S.observed

theorem observation_state_space_closed_from_evidence
    (S : ObservationStateSpace) (E : ObservationStateSpaceEvidence S) :
    ObservationStateSpaceClosed S := by
  exact And.intro E.dynamicsControlled E.observationConsistent

end DigitalControlObservationSystemsFoundationCanonicalLaneLean
end HautevilleHouse