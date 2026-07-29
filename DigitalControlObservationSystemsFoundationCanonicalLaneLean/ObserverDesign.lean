import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DigitalControlObservationSystemsFoundationCanonicalLaneLean

structure ObserverDesign where
  observationSpace : ObservationSpace
  controlLaw : ControlLaw
  estimationError : Prop
  convergenceRate : Prop
  robustness : Prop

structure ObserverDesignEvidence (O : ObserverDesign) where
  estimationErrorClosed : O.estimationError
  convergenceRateClosed : O.convergenceRate
  robustnessClosed : O.robustness

def ObserverDesignClosed (O : ObserverDesign) : Prop :=
  O.estimationError ∧ O.convergenceRate ∧ O.robustness

theorem observer_design_closed_from_evidence (O : ObserverDesign) (E : ObserverDesignEvidence O) :
    ObserverDesignClosed O := by
  exact And.intro E.estimationErrorClosed (And.intro E.convergenceRateClosed E.robustnessClosed)

end DigitalControlObservationSystemsFoundationCanonicalLaneLean
end HautevilleHouse