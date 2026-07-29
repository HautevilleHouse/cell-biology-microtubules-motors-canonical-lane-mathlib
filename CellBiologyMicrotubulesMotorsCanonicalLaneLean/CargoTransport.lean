import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CellBiologyMicrotubulesMotorsCanonicalLaneLean

structure CargoTransportPackage where
  cargoType : Type u
  motorCargoLink : Prop
  transportDirection : Prop  -- true for plus-end, false for minus-end
  runLength : Real
  velocity : Real

structure CargoTransportEvidence (C : CargoTransportPackage) where
  motorCargoLinkClosed : C.motorCargoLink
  transportDirectionDefined : C.transportDirection ∨ ¬C.transportDirection
  runLengthPositive : C.runLength > 0
  velocityPositive : C.velocity > 0

def CargoTransportClosed (C : CargoTransportPackage) : Prop :=
  C.motorCargoLink ∧ (C.transportDirection ∨ ¬C.transportDirection) ∧ C.runLength > 0 ∧ C.velocity > 0

theorem cargo_transport_closed_from_evidence
    (C : CargoTransportPackage) (E : CargoTransportEvidence C) :
    CargoTransportClosed C := by
  exact And.intro E.motorCargoLinkClosed
    (And.intro E.transportDirectionDefined
      (And.intro E.runLengthPositive E.velocityPositive))

end CellBiologyMicrotubulesMotorsCanonicalLaneLean
end HautevilleHouse