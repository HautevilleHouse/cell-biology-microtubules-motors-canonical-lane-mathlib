import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CellBiologyMicrotubulesMotors

structure FilamentPolymerizationPackage where
  tubulinConcentration : Prop
  gtpCap : Prop
  catastropheFrequency : Prop
  rescueFrequency : Prop
  dynamicInstability : Prop

structure FilamentPolymerizationEvidence (F : FilamentPolymerizationPackage) where
  tubulinConcentrationClosed : F.tubulinConcentration
  gtpCapClosed : F.gtpCap
  catastropheFrequencyClosed : F.catastropheFrequency
  rescueFrequencyClosed : F.rescueFrequency
  dynamicInstabilityClosed : F.dynamicInstability

def FilamentPolymerizationClosed (F : FilamentPolymerizationPackage) : Prop :=
  F.tubulinConcentration ∧ F.gtpCap ∧ F.catastropheFrequency ∧ F.rescueFrequency ∧
  F.dynamicInstability

theorem filament_polymerization_closed_from_evidence (F : FilamentPolymerizationPackage)
    (E : FilamentPolymerizationEvidence F) : FilamentPolymerizationClosed F := by
  exact And.intro E.tubulinConcentrationClosed (And.intro E.gtpCapClosed
    (And.intro E.catastropheFrequencyClosed (And.intro E.rescueFrequencyClosed
      E.dynamicInstabilityClosed)))

end CellBiologyMicrotubulesMotors
end HautevilleHouse
