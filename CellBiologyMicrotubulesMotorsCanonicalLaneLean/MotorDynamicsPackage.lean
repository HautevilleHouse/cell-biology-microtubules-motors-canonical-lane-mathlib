import HautevilleHouse.CellBiologyMicrotubulesMotorsCanonicalLaneLean.MicrotubuleMotorStructures

namespace HautevilleHouse
namespace CellBiologyMicrotubulesMotorsCanonicalLaneLean

structure MotorDynamicsPackage (F : MicrotubuleFilament) (M : MotorProteinFamily) where
  attachmentRate : Float
  detachmentRate : Float
  velocityMean : Float
  velocityVariance : Float
  processivityLength : Float

structure MotorDynamicsEvidence {F : MicrotubuleFilament} {M : MotorProteinFamily} (D : MotorDynamicsPackage F M) where
  attachmentRateClosed : D.attachmentRate > 0.0
  detachmentRateClosed : D.detachmentRate > 0.0
  velocityMeanClosed : D.velocityMean > 0.0
  velocityVarianceClosed : D.velocityVariance > 0.0
  processivityLengthClosed : D.processivityLength > 0.0

def MotorDynamicsClosed {F : MicrotubuleFilament} {M : MotorProteinFamily} (D : MotorDynamicsPackage F M) : Prop :=
  D.attachmentRate > 0.0 ∧ D.detachmentRate > 0.0 ∧ D.velocityMean > 0.0 ∧ D.velocityVariance > 0.0 ∧ D.processivityLength > 0.0

theorem motor_dynamics_closed_from_evidence
    {F : MicrotubuleFilament} {M : MotorProteinFamily} (D : MotorDynamicsPackage F M) (E : MotorDynamicsEvidence D) :
    MotorDynamicsClosed D := by
  exact And.intro E.attachmentRateClosed
    (And.intro E.detachmentRateClosed
      (And.intro E.velocityMeanClosed
        (And.intro E.velocityVarianceClosed E.processivityLengthClosed)))

end CellBiologyMicrotubulesMotorsCanonicalLaneLean
end HautevilleHouse
