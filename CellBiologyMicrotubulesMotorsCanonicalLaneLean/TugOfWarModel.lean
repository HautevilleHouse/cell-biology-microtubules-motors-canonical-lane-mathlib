import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CellBiologyMicrotubulesMotorsCanonicalLaneLean

structure TugOfWarModelPackage where
  plusEndMotorForce : Real
  minusEndMotorForce : Real
  cargoAttachment : Prop
  netDisplacement : Real -> Real
  stallCondition : Real

structure TugOfWarModelEvidence (T : TugOfWarModelPackage) where
  cargoAttachmentClosed : T.cargoAttachment
  netDisplacementDefined : ∀ (t : Real), True
  stallConditionClosed : T.stallCondition > 0

def TugOfWarModelClosed (T : TugOfWarModelPackage) : Prop :=
  T.cargoAttachment ∧ T.stallCondition > 0

theorem tug_of_war_model_closed_from_evidence
    (T : TugOfWarModelPackage) (E : TugOfWarModelEvidence T) :
    TugOfWarModelClosed T := by
  exact And.intro E.cargoAttachmentClosed E.stallConditionClosed

end CellBiologyMicrotubulesMotorsCanonicalLaneLean
end HautevilleHouse