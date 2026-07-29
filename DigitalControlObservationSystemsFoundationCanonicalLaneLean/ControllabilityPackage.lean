import HautevilleHouse.DigitalControlObservationSystemsFoundationCanonicalLaneLean.ObservationObjects

/-!
# Controllability Package
-/

namespace HautevilleHouse
namespace DigitalControlObservationSystemsFoundationCanonicalLaneLean

structure ControllabilityPackage where
  reachableSet : Prop
  controllabilityMatrixRank : Prop
  stabilizabilityCondition : Prop
  controllabilityGramian : Prop

structure ControllabilityEvidence (C : ControllabilityPackage) where
  reachableSetClosed : C.reachableSet
  controllabilityMatrixRankClosed : C.controllabilityMatrixRank
  stabilizabilityConditionClosed : C.stabilizabilityCondition
  controllabilityGramianClosed : C.controllabilityGramian

def ControllabilityClosed (C : ControllabilityPackage) : Prop :=
  C.reachableSet ∧ C.controllabilityMatrixRank ∧ C.stabilizabilityCondition ∧ C.controllabilityGramian

theorem controllability_closed_from_evidence (C : ControllabilityPackage) (E : ControllabilityEvidence C) :
    ControllabilityClosed C := by
  exact And.intro E.reachableSetClosed (And.intro E.controllabilityMatrixRankClosed (And.intro E.stabilizabilityConditionClosed E.controllabilityGramianClosed))

end DigitalControlObservationSystemsFoundationCanonicalLaneLean
end HautevilleHouse