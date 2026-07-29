import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CellBiologyMicrotubulesMotorsCanonicalLaneLean

structure MotorProteinDynamicsPackage where
  microtubuleFilament : Type u
  motorHeadDomain : Type v
  atpBinding : Prop
  powerStroke : Prop
  processivity : Prop
  steppingRate : Real

structure MotorProteinDynamicsEvidence (M : MotorProteinDynamicsPackage) where
  atpBindingClosed : M.atpBinding
  powerStrokeClosed : M.powerStroke
  processivityClosed : M.processivity

def MotorProteinDynamicsClosed (M : MotorProteinDynamicsPackage) : Prop :=
  M.atpBinding ∧ M.powerStroke ∧ M.processivity

theorem motor_protein_dynamics_closed_from_evidence
    (M : MotorProteinDynamicsPackage) (E : MotorProteinDynamicsEvidence M) :
    MotorProteinDynamicsClosed M := by
  exact And.intro E.atpBindingClosed (And.intro E.powerStrokeClosed E.processivityClosed)

end CellBiologyMicrotubulesMotorsCanonicalLaneLean
end HautevilleHouse