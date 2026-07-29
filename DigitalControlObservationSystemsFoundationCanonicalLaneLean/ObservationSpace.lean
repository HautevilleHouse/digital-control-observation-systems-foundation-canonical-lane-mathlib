import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DigitalControlObservationSystemsFoundationCanonicalLaneLean

structure ObservationSpace where
  stateType : Type u
  observationType : Type v
  stateSpace : TopologicalSpace stateType
  observationSpace : TopologicalSpace observationType
  measurability : stateType -> observationType
  measurabilityContinuous : Prop

structure ObservationSpaceEvidence (O : ObservationSpace) where
  measurabilityContinuousClosed : O.measurabilityContinuous

def ObservationSpaceClosed (O : ObservationSpace) : Prop :=
  O.measurabilityContinuous

theorem observation_space_closed_from_evidence (O : ObservationSpace) (E : ObservationSpaceEvidence O) :
    ObservationSpaceClosed O := by
  exact E.measurabilityContinuousClosed

end DigitalControlObservationSystemsFoundationCanonicalLaneLean
end HautevilleHouse