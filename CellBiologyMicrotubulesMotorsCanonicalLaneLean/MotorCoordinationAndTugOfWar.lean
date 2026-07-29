import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CellBiologyMicrotubulesMotorsCanonicalLaneLean

structure MotorCoordinationAndTugOfWarPackage where
  oppositePolarityMotors : Prop
  cargoPartitioning : Prop
  teamTransportPhenomenon : Prop
  regulatorySwitching : Prop
  collectiveMotorDynamics : Prop

structure MotorCoordinationAndTugOfWarEvidence (M : MotorCoordinationAndTugOfWarPackage) where
  oppositePolarityMotorsClosed : M.oppositePolarityMotors
  cargoPartitioningClosed : M.cargoPartitioning
  teamTransportPhenomenonClosed : M.teamTransportPhenomenon
  regulatorySwitchingClosed : M.regulatorySwitching
  collectiveMotorDynamicsClosed : M.collectiveMotorDynamics

def MotorCoordinationAndTugOfWarClosed (M : MotorCoordinationAndTugOfWarPackage) : Prop :=
  M.oppositePolarityMotors ∧ M.cargoPartitioning ∧ M.teamTransportPhenomenon ∧
  M.regulatorySwitching ∧ M.collectiveMotorDynamics

theorem motor_coordination_and_tug_of_war_closed_from_evidence
    (M : MotorCoordinationAndTugOfWarPackage)
    (E : MotorCoordinationAndTugOfWarEvidence M) :
    MotorCoordinationAndTugOfWarClosed M := by
  exact And.intro E.oppositePolarityMotorsClosed
    (And.intro E.cargoPartitioningClosed
      (And.intro E.teamTransportPhenomenonClosed
        (And.intro E.regulatorySwitchingClosed E.collectiveMotorDynamicsClosed)))

end CellBiologyMicrotubulesMotorsCanonicalLaneLean
end HautevilleHouse