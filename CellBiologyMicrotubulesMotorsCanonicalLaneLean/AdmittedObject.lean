import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CellBiologyMicrotubulesMotorsCanonicalLaneLean

structure AdmittedMotorObject where
  dynamicsPackage : MotorProteinDynamicsPackage
  tugOfWarPackage : TugOfWarModelPackage
  cooperativeBindingPackage : CooperativeBindingPackage
  cargoTransportPackage : CargoTransportPackage
  combinedConclusion : Prop
  combinedConclusionTerm : combinedConclusion

def AdmittedMotorObjectClosed (O : AdmittedMotorObject) : Prop :=
  O.combinedConclusion

theorem admitted_motor_object_closed (O : AdmittedMotorObject) :
    AdmittedMotorObjectClosed O := O.combinedConclusionTerm

end CellBiologyMicrotubulesMotorsCanonicalLaneLean
end HautevilleHouse