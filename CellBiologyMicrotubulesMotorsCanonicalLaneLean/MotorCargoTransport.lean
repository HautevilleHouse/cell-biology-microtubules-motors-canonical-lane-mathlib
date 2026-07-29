import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CellBiologyMicrotubulesMotorsCanonicalLaneLean

structure CargoTransportPackage where
  cargoAttachmentSite : Prop
  adaptorProteinMediation : Prop
  motorCargoCoupling : Prop
  bidirectionalTransportRegulation : Prop
  cargoReleaseSignal : Prop
  transportKineticsConsistent : Prop

structure CargoTransportEvidence (C : CargoTransportPackage) where
  cargoAttachmentSiteClosed : C.cargoAttachmentSite
  adaptorProteinMediationClosed : C.adaptorProteinMediation
  motorCargoCouplingClosed : C.motorCargoCoupling
  bidirectionalTransportRegulationClosed : C.bidirectionalTransportRegulation
  cargoReleaseSignalClosed : C.cargoReleaseSignal
  transportKineticsConsistentClosed : C.transportKineticsConsistent

def CargoTransportClosed (C : CargoTransportPackage) : Prop :=
  C.cargoAttachmentSite ∧ C.adaptorProteinMediation ∧ C.motorCargoCoupling ∧ C.bidirectionalTransportRegulation ∧ C.cargoReleaseSignal ∧ C.transportKineticsConsistent

theorem cargo_transport_closed_from_evidence (C : CargoTransportPackage) (E : CargoTransportEvidence C) : CargoTransportClosed C := by
  exact And.intro E.cargoAttachmentSiteClosed (And.intro E.adaptorProteinMediationClosed (And.intro E.motorCargoCouplingClosed (And.intro E.bidirectionalTransportRegulationClosed (And.intro E.cargoReleaseSignalClosed E.transportKineticsConsistentClosed))))

end CellBiologyMicrotubulesMotorsCanonicalLaneLean
end HautevilleHouse
