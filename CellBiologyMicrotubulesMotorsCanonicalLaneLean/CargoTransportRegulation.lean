import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CellBiologyMicrotubulesMotorsCanonicalLaneLean

structure CargoTransportRegulationPackage where
  cargoRecognition : Prop
  motorCargoBindingAffinity : Prop
  directionalBias : Prop
  regulatoryPhosphorylation : Prop
  adaptorProteinMediation : Prop

structure CargoTransportRegulationEvidence (C : CargoTransportRegulationPackage) where
  cargoRecognitionClosed : C.cargoRecognition
  motorCargoBindingAffinityClosed : C.motorCargoBindingAffinity
  directionalBiasClosed : C.directionalBias
  regulatoryPhosphorylationClosed : C.regulatoryPhosphorylation
  adaptorProteinMediationClosed : C.adaptorProteinMediation

def CargoTransportRegulationClosed (C : CargoTransportRegulationPackage) : Prop :=
  C.cargoRecognition ∧ C.motorCargoBindingAffinity ∧ C.directionalBias ∧
  C.regulatoryPhosphorylation ∧ C.adaptorProteinMediation

theorem cargo_transport_regulation_closed_from_evidence
    (C : CargoTransportRegulationPackage)
    (E : CargoTransportRegulationEvidence C) :
    CargoTransportRegulationClosed C := by
  exact And.intro E.cargoRecognitionClosed
    (And.intro E.motorCargoBindingAffinityClosed
      (And.intro E.directionalBiasClosed
        (And.intro E.regulatoryPhosphorylationClosed E.adaptorProteinMediationClosed)))

end CellBiologyMicrotubulesMotorsCanonicalLaneLean
end HautevilleHouse