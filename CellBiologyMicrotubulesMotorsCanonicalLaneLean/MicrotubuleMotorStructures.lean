import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CellBiologyMicrotubulesMotorsCanonicalLaneLean

structure MicrotubuleFilament where
  protofilaments : Nat
  polarityPlusEnd : Prop
  polarityMinusEnd : Prop

structure MotorProteinFamily where
  familyName : String
  directionality : Prop
  processivity : Prop
  stepSize : Nat

structure MotorCargoComplex where
  motor : MotorProteinFamily
  cargoBinding : Prop
  motilityRate : Float

structure ATPHydrolysisCycle where
  atpBinding : Prop
  hydrolysis : Prop
  piRelease : Prop
  adpRelease : Prop
  powerStroke : Prop

structure MicrotubuleAdmittedObject where
  filament : MicrotubuleFilament
  motor : MotorProteinFamily
  cycle : ATPHydrolysisCycle
  conclusion : motilityRate > 0.0

end CellBiologyMicrotubulesMotorsCanonicalLaneLean
end HautevilleHouse
