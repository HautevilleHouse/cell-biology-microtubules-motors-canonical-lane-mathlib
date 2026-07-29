import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CellBiologyMicrotubulesMotorsCanonicalLaneLean

structure MotorProteinComplex where
  motorDomain : Type
  microtubuleBindingSite : Type
  atpBindingSite : Type
  steppingMechanism : Prop
  processivity : Prop
  steppingMechanismTerm : steppingMechanism
  processivityTerm : processivity

structure CargoTransportPackage where
  motor : MotorProteinComplex
  cargoBinding : Prop
  directionalMovement : Prop
  speedRange : Prop
  cargoBindingTerm : cargoBinding
  directionalMovementTerm : directionalMovement
  speedRangeTerm : speedRange

structure CargoTransportEvidence (C : CargoTransportPackage) where
  directionalMovementClosed : C.directionalMovement
  speedRangeClosed : C.speedRange

def CargoTransportClosed (C : CargoTransportPackage) : Prop :=
  C.directionalMovement ∧ C.speedRange

theorem cargo_transport_closed_from_evidence (C : CargoTransportPackage)
    (E : CargoTransportEvidence C) : CargoTransportClosed C := by
  exact And.intro E.directionalMovementClosed E.speedRangeClosed

end CellBiologyMicrotubulesMotorsCanonicalLaneLean
end HautevilleHouse
