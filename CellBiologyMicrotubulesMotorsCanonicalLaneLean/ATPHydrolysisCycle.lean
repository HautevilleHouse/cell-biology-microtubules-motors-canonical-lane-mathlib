import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CellBiologyMicrotubulesMotorsCanonicalLaneLean

structure ATPHydrolysisPackage where
  atpBindingEvent : Prop
  hydrolysisStep : Prop
  phosphateRelease : Prop
  adpReleaseEvent : Prop
  cycleRecovery : Prop
  nucleotideExchangeReady : Prop

structure ATPHydrolysisEvidence (H : ATPHydrolysisPackage) where
  atpBindingEventClosed : H.atpBindingEvent
  hydrolysisStepClosed : H.hydrolysisStep
  phosphateReleaseClosed : H.phosphateRelease
  adpReleaseEventClosed : H.adpReleaseEvent
  cycleRecoveryClosed : H.cycleRecovery
  nucleotideExchangeReadyClosed : H.nucleotideExchangeReady

def ATPHydrolysisClosed (H : ATPHydrolysisPackage) : Prop :=
  H.atpBindingEvent ∧ H.hydrolysisStep ∧ H.phosphateRelease ∧ H.adpReleaseEvent ∧ H.cycleRecovery ∧ H.nucleotideExchangeReady

theorem atp_hydrolysis_closed_from_evidence (H : ATPHydrolysisPackage) (E : ATPHydrolysisEvidence H) : ATPHydrolysisClosed H := by
  exact And.intro E.atpBindingEventClosed (And.intro E.hydrolysisStepClosed (And.intro E.phosphateReleaseClosed (And.intro E.adpReleaseEventClosed (And.intro E.cycleRecoveryClosed E.nucleotideExchangeReadyClosed))))

end CellBiologyMicrotubulesMotorsCanonicalLaneLean
end HautevilleHouse
