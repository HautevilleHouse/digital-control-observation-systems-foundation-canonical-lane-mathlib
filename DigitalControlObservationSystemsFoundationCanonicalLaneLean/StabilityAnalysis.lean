import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DigitalControlObservationSystemsFoundationCanonicalLaneLean

structure StabilityAnalysis where
  lyapunovFunction : Type u
  derivativeCondition : Prop
  asymptoticStability : Prop
  domainOfAttraction : Prop

structure StabilityAnalysisEvidence (S : StabilityAnalysis) where
  derivativeConditionClosed : S.derivativeCondition
  asymptoticStabilityClosed : S.asymptoticStability
  domainOfAttractionClosed : S.domainOfAttraction

def StabilityAnalysisClosed (S : StabilityAnalysis) : Prop :=
  S.derivativeCondition ∧ S.asymptoticStability ∧ S.domainOfAttraction

theorem stability_analysis_closed_from_evidence (S : StabilityAnalysis) (E : StabilityAnalysisEvidence S) :
    StabilityAnalysisClosed S := by
  exact And.intro E.derivativeConditionClosed (And.intro E.asymptoticStabilityClosed E.domainOfAttractionClosed)

end DigitalControlObservationSystemsFoundationCanonicalLaneLean
end HautevilleHouse