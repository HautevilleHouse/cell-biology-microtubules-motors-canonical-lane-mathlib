import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CellBiologyMicrotubulesMotorsCanonicalLaneLean

structure MotorConformationPackage where
  headDomainConformation : Type u
  stalkDomainConformation : Type v
  atpBindingState : Prop
  microtubuleAffinity : Prop
  headsBridged : Prop
  conformationStable : Prop

structure MotorConformationEvidence (M : MotorConformationPackage) where
  atpBindingStateClosed : M.atpBindingState
  microtubuleAffinityClosed : M.microtubuleAffinity
  headsBridgedClosed : M.headsBridged
  conformationStableClosed : M.conformationStable

def MotorConformationClosed (M : MotorConformationPackage) : Prop :=
  M.atpBindingState ∧ M.microtubuleAffinity ∧ M.headsBridged ∧ M.conformationStable

theorem motor_conformation_closed_from_evidence (M : MotorConformationPackage) (E : MotorConformationEvidence M) : MotorConformationClosed M := by
  exact And.intro E.atpBindingStateClosed (And.intro E.microtubuleAffinityClosed (And.intro E.headsBridgedClosed E.conformationStableClosed))

end CellBiologyMicrotubulesMotorsCanonicalLaneLean
end HautevilleHouse
