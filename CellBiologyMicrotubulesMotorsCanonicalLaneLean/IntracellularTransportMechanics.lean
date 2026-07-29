import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CellBiologyMicrotubulesMotorsCanonicalLaneLean

structure IntracellularTransportMechanicsPackage where
  motorSteppingModel : Prop
  forceGeneration : Prop
  collisionAvoidance : Prop
  bidirectionalTransport : Prop
  obstacleNegotiation : Prop

structure IntracellularTransportMechanicsEvidence (I : IntracellularTransportMechanicsPackage) where
  motorSteppingModelClosed : I.motorSteppingModel
  forceGenerationClosed : I.forceGeneration
  collisionAvoidanceClosed : I.collisionAvoidance
  bidirectionalTransportClosed : I.bidirectionalTransport
  obstacleNegotiationClosed : I.obstacleNegotiation

def IntracellularTransportMechanicsClosed (I : IntracellularTransportMechanicsPackage) : Prop :=
  I.motorSteppingModel ∧ I.forceGeneration ∧ I.collisionAvoidance ∧
  I.bidirectionalTransport ∧ I.obstacleNegotiation

theorem intracellular_transport_mechanics_closed_from_evidence
    (I : IntracellularTransportMechanicsPackage)
    (E : IntracellularTransportMechanicsEvidence I) :
    IntracellularTransportMechanicsClosed I := by
  exact And.intro E.motorSteppingModelClosed
    (And.intro E.forceGenerationClosed
      (And.intro E.collisionAvoidanceClosed
        (And.intro E.bidirectionalTransportClosed E.obstacleNegotiationClosed)))

end CellBiologyMicrotubulesMotorsCanonicalLaneLean
end HautevilleHouse