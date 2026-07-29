import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CellBiologyMicrotubulesMotorsCanonicalLaneLean

structure CytoskeletalOrganizationPackage where
  microtubuleNucleationCentrosome : Prop
  minusEndAnchored : Prop
  plusEndDynamicInstability : Prop
  motorProteinTransport : Prop

structure CytoskeletalOrganizationEvidence (C : CytoskeletalOrganizationPackage) where
  microtubuleNucleationCentrosomeClosed : C.microtubuleNucleationCentrosome
  minusEndAnchoredClosed : C.minusEndAnchored
  plusEndDynamicInstabilityClosed : C.plusEndDynamicInstability
  motorProteinTransportClosed : C.motorProteinTransport

def CytoskeletalOrganizationClosed (C : CytoskeletalOrganizationPackage) : Prop :=
  C.microtubuleNucleationCentrosome ∧ C.minusEndAnchored ∧
  C.plusEndDynamicInstability ∧ C.motorProteinTransport

theorem cytoskeletal_organization_closed_from_evidence
    (C : CytoskeletalOrganizationPackage)
    (E : CytoskeletalOrganizationEvidence C) :
    CytoskeletalOrganizationClosed C := by
  exact And.intro E.microtubuleNucleationCentrosomeClosed
    (And.intro E.minusEndAnchoredClosed
      (And.intro E.plusEndDynamicInstabilityClosed E.motorProteinTransportClosed))

end CellBiologyMicrotubulesMotorsCanonicalLaneLean
end HautevilleHouse