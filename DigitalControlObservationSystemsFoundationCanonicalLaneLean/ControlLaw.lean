import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DigitalControlObservationSystemsFoundationCanonicalLaneLean

structure ControlLaw where
  inputSpace : Type u
  outputSpace : Type v
  controlFunction : inputSpace -> outputSpace
  boundedness : Prop
  continuity : Prop

structure ControlLawEvidence (C : ControlLaw) where
  boundednessClosed : C.boundedness
  continuityClosed : C.continuity

def ControlLawClosed (C : ControlLaw) : Prop :=
  C.boundedness ∧ C.continuity

theorem control_law_closed_from_evidence (C : ControlLaw) (E : ControlLawEvidence C) :
    ControlLawClosed C := by
  exact And.intro E.boundednessClosed E.continuityClosed

end DigitalControlObservationSystemsFoundationCanonicalLaneLean
end HautevilleHouse