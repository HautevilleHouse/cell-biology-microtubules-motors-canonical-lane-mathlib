import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CellBiologyMicrotubulesMotorsCanonicalLaneLean

structure MicrotubuleMotorAdmittedObject where
  microtubule : Type
  motorProtein : Type
  trackBinding : Prop
  atpHydrolysis : Prop
  processiveMotion : Prop
  conclusion : processiveMotion

def MotorWitnessClosed (O : MicrotubuleMotorAdmittedObject) : Prop :=
  O.processiveMotion

end CellBiologyMicrotubulesMotorsCanonicalLaneLean
end HautevilleHouse