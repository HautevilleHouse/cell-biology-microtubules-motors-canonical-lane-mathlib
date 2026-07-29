import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CellBiologyMicrotubulesMotorsCanonicalLaneLean

structure CooperativeMotorPackage where
  motorDensityOnMicrotubule : Prop
  crowdingEffect : Prop
  trafficJamsFormation : Prop
  collectiveForceGeneration : Prop
  filamentSliding : Prop
  motorCoordinationSignals : Prop

structure CooperativeMotorEvidence (C : CooperativeMotorPackage) where
  motorDensityOnMicrotubuleClosed : C.motorDensityOnMicrotubule
  crowdingEffectClosed : C.crowdingEffect
  trafficJamsFormationClosed : C.trafficJamsFormation
  collectiveForceGenerationClosed : C.collectiveForceGeneration
  filamentSlidingClosed : C.filamentSliding
  motorCoordinationSignalsClosed : C.motorCoordinationSignals

def CooperativeMotorClosed (C : CooperativeMotorPackage) : Prop :=
  C.motorDensityOnMicrotubule ∧ C.crowdingEffect ∧ C.trafficJamsFormation ∧ C.collectiveForceGeneration ∧ C.filamentSliding ∧ C.motorCoordinationSignals

theorem cooperative_motor_closed_from_evidence (C : CooperativeMotorPackage) (E : CooperativeMotorEvidence C) : CooperativeMotorClosed C := by
  exact And.intro E.motorDensityOnMicrotubuleClosed (And.intro E.crowdingEffectClosed (And.intro E.trafficJamsFormationClosed (And.intro E.collectiveForceGenerationClosed (And.intro E.filamentSlidingClosed E.motorCoordinationSignalsClosed))))

end CellBiologyMicrotubulesMotorsCanonicalLaneLean
end HautevilleHouse
