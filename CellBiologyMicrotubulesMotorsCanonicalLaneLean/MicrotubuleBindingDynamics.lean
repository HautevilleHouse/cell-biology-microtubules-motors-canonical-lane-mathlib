import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CellBiologyMicrotubulesMotorsCanonicalLaneLean

structure MicrotubuleBindingPackage where
  bindingSiteAvailability : Prop
  affinityModulatedByNucleotide : Prop
  headStalkCoordination : Prop
  processiveStep : Prop
  detachmentEvent : Prop
  trackSwitchingCapability : Prop

structure MicrotubuleBindingEvidence (M : MicrotubuleBindingPackage) where
  bindingSiteAvailabilityClosed : M.bindingSiteAvailability
  affinityModulatedByNucleotideClosed : M.affinityModulatedByNucleotide
  headStalkCoordinationClosed : M.headStalkCoordination
  processiveStepClosed : M.processiveStep
  detachmentEventClosed : M.detachmentEvent
  trackSwitchingCapabilityClosed : M.trackSwitchingCapability

def MicrotubuleBindingClosed (M : MicrotubuleBindingPackage) : Prop :=
  M.bindingSiteAvailability ∧ M.affinityModulatedByNucleotide ∧ M.headStalkCoordination ∧ M.processiveStep ∧ M.detachmentEvent ∧ M.trackSwitchingCapability

theorem microtubule_binding_closed_from_evidence (M : MicrotubuleBindingPackage) (E : MicrotubuleBindingEvidence M) : MicrotubuleBindingClosed M := by
  exact And.intro E.bindingSiteAvailabilityClosed (And.intro E.affinityModulatedByNucleotideClosed (And.intro E.headStalkCoordinationClosed (And.intro E.processiveStepClosed (And.intro E.detachmentEventClosed E.trackSwitchingCapabilityClosed))))

end CellBiologyMicrotubulesMotorsCanonicalLaneLean
end HautevilleHouse
