import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CellBiologyMicrotubulesMotors

structure CollectiveTransportPackage {M : MotorProteinDynamicsPackage}
    (D : MotorProteinDynamicsClosed M) where
  motorDensity : Prop
  trafficModel : Prop
  jammingCondition : Prop
  averageVelocity : Prop

structure CollectiveTransportEvidence {M : MotorProteinDynamicsPackage}
    {D : MotorProteinDynamicsClosed M} (C : CollectiveTransportPackage D) where
  motorDensityClosed : C.motorDensity
  trafficModelClosed : C.trafficModel
  jammingConditionClosed : C.jammingCondition
  averageVelocityClosed : C.averageVelocity

def CollectiveTransportClosed {M : MotorProteinDynamicsPackage}
    {D : MotorProteinDynamicsClosed M} (C : CollectiveTransportPackage D) : Prop :=
  C.motorDensity ∧ C.trafficModel ∧ C.jammingCondition ∧ C.averageVelocity

theorem collective_transport_closed_from_evidence {M : MotorProteinDynamicsPackage}
    {D : MotorProteinDynamicsClosed M} (C : CollectiveTransportPackage D)
    (E : CollectiveTransportEvidence C) : CollectiveTransportClosed C := by
  exact And.intro E.motorDensityClosed (And.intro E.trafficModelClosed
    (And.intro E.jammingConditionClosed E.averageVelocityClosed))

end CellBiologyMicrotubulesMotors
end HautevilleHouse
