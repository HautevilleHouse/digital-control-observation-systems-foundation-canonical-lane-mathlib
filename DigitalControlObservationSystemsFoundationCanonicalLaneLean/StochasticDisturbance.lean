import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.DigitalControlObservationSystemsFoundationCanonicalLaneLean.ObservationStateSpace

namespace HautevilleHouse
namespace DigitalControlObservationSystemsFoundationCanonicalLaneLean

structure StochasticDisturbance {S : ObservationStateSpace} where
  noiseProcess : Type w
  covarianceStructure : Prop
  boundedSecondMoment : Prop
  disturbanceDecoupled : Prop

structure StochasticDisturbanceEvidence {S : ObservationStateSpace} (D : StochasticDisturbance S) where
  covarianceStructureClosed : D.covarianceStructure
  boundedSecondMomentClosed : D.boundedSecondMoment
  disturbanceDecoupledClosed : D.disturbanceDecoupled

def StochasticDisturbanceClosed {S : ObservationStateSpace} (D : StochasticDisturbance S) : Prop :=
  D.covarianceStructure ∧ D.boundedSecondMoment ∧ D.disturbanceDecoupled

theorem stochastic_disturbance_closed_from_evidence
    {S : ObservationStateSpace} (D : StochasticDisturbance S)
    (E : StochasticDisturbanceEvidence D) : StochasticDisturbanceClosed D := by
  exact And.intro E.covarianceStructureClosed
    (And.intro E.boundedSecondMomentClosed E.disturbanceDecoupledClosed)

end DigitalControlObservationSystemsFoundationCanonicalLaneLean
end HautevilleHouse