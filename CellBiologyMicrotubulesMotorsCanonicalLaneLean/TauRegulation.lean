import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CellBiologyMicrotubulesMotors

structure TauRegulationPackage where
  tauIsoform : Type
  phosphorylationStatus : Prop
  microtubuleBinding : Prop
  motorAccess : Prop

structure TauRegulationEvidence (T : TauRegulationPackage) where
  phosphorylationStatusClosed : T.phosphorylationStatus
  microtubuleBindingClosed : T.microtubuleBinding
  motorAccessClosed : T.motorAccess

def TauRegulationClosed (T : TauRegulationPackage) : Prop :=
  T.phosphorylationStatus ∧ T.microtubuleBinding ∧ T.motorAccess

theorem tau_regulation_closed_from_evidence (T : TauRegulationPackage)
    (E : TauRegulationEvidence T) : TauRegulationClosed T := by
  exact And.intro E.phosphorylationStatusClosed (And.intro E.microtubuleBindingClosed
    E.motorAccessClosed)

end CellBiologyMicrotubulesMotors
end HautevilleHouse
