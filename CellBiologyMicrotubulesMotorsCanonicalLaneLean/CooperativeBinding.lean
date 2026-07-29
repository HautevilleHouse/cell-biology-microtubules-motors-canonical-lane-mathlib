import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CellBiologyMicrotubulesMotorsCanonicalLaneLean

structure CooperativeBindingPackage where
  motorProteins : List Type
  bindingSites : Nat
  cooperativityFactor : Real
  bindingAffinity : Real
  allostericRegulation : Prop

structure CooperativeBindingEvidence (C : CooperativeBindingPackage) where
  bindingSitesPositive : C.bindingSites > 0
  cooperativityFactorPositive : C.cooperativityFactor > 0
  bindingAffinityPositive : C.bindingAffinity > 0
  allostericRegulationClosed : C.allostericRegulation

def CooperativeBindingClosed (C : CooperativeBindingPackage) : Prop :=
  C.bindingSites > 0 ∧ C.cooperativityFactor > 0 ∧ C.bindingAffinity > 0 ∧ C.allostericRegulation

theorem cooperative_binding_closed_from_evidence
    (C : CooperativeBindingPackage) (E : CooperativeBindingEvidence C) :
    CooperativeBindingClosed C := by
  exact And.intro E.bindingSitesPositive
    (And.intro E.cooperativityFactorPositive
      (And.intro E.bindingAffinityPositive E.allostericRegulationClosed))

end CellBiologyMicrotubulesMotorsCanonicalLaneLean
end HautevilleHouse