import HautevilleHouse.CellBiologyMicrotubulesMotorsCanonicalLaneLean.CargoTransportPackage

namespace HautevilleHouse
namespace CellBiologyMicrotubulesMotorsCanonicalLaneLean

structure MotorCoordinationPackage {F : MicrotubuleFilament} {M : MotorProteinFamily} {D : MotorDynamicsPackage F M} (T : CargoTransportPackage D) where
  motorNumber : Nat
  tensionDistribution : Prop
  collectiveVelocity : Float
  bidirectionalControl : Prop
  tugOfWarResolution : Prop

structure MotorCoordinationEvidence {F : MicrotubuleFilament} {M : MotorProteinFamily} {D : MotorDynamicsPackage F M} {T : CargoTransportPackage D} (C : MotorCoordinationPackage T) where
  motorNumberClosed : C.motorNumber ≥ 1
  tensionDistributionClosed : C.tensionDistribution
  collectiveVelocityClosed : C.collectiveVelocity > 0.0
  bidirectionalControlClosed : C.bidirectionalControl
  tugOfWarResolutionClosed : C.tugOfWarResolution

def MotorCoordinationClosed {F : MicrotubuleFilament} {M : MotorProteinFamily} {D : MotorDynamicsPackage F M} {T : CargoTransportPackage D} (C : MotorCoordinationPackage T) : Prop :=
  C.motorNumber ≥ 1 ∧ C.tensionDistribution ∧ C.collectiveVelocity > 0.0 ∧ C.bidirectionalControl ∧ C.tugOfWarResolution

theorem motor_coordination_closed_from_evidence
    {F : MicrotubuleFilament} {M : MotorProteinFamily} {D : MotorDynamicsPackage F M} {T : CargoTransportPackage D} (C : MotorCoordinationPackage T) (E : MotorCoordinationEvidence C) :
    MotorCoordinationClosed C := by
  exact And.intro E.motorNumberClosed
    (And.intro E.tensionDistributionClosed
      (And.intro E.collectiveVelocityClosed
        (And.intro E.bidirectionalControlClosed E.tugOfWarResolutionClosed)))

end CellBiologyMicrotubulesMotorsCanonicalLaneLean
end HautevilleHouse
