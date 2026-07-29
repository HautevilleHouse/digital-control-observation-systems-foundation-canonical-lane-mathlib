import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.DigitalControlObservationSystemsFoundationCanonicalLaneLean.ObservationStateSpace

namespace HautevilleHouse
namespace DigitalControlObservationSystemsFoundationCanonicalLaneLean

structure ObservabilityDecomposition {S : ObservationStateSpace} where
  unobservableSubspace : Type w
  observableQuotient : Type v
  detectabilityCondition : Prop
  observabilityMatrix : Type u

def detectabilityConditionClosed {S : ObservationStateSpace} (D : ObservabilityDecomposition S) : Prop :=
  D.detectabilityCondition

structure ObservabilityDecompositionEvidence {S : ObservationStateSpace} (D : ObservabilityDecomposition S) where
  detectabilityConditionClosed : D.detectabilityCondition

def ObservabilityDecompositionClosed {S : ObservationStateSpace} (D : ObservabilityDecomposition S) : Prop :=
  D.detectabilityCondition

theorem observability_decomposition_closed_from_evidence
    {S : ObservationStateSpace} (D : ObservabilityDecomposition S)
    (E : ObservabilityDecompositionEvidence D) : ObservabilityDecompositionClosed D := by
  exact E.detectabilityConditionClosed

end DigitalControlObservationSystemsFoundationCanonicalLaneLean
end HautevilleHouse