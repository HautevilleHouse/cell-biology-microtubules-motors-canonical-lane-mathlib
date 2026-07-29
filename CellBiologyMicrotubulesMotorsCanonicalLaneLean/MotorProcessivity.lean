import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CellBiologyMicrotubulesMotorsCanonicalLaneLean

structure MotorProcessivityPackage where
  runLength : Nat
  probabilityDetachment : Float
  atpConcentrationDependence : Prop
  processivityAssayValid : Prop
  atpConcentrationDependenceTerm : atpConcentrationDependence
  processivityAssayValidTerm : processivityAssayValid

structure MotorProcessivityEvidence (P : MotorProcessivityPackage) where
  atpConcentrationDependenceClosed : P.atpConcentrationDependence
  processivityAssayValidClosed : P.processivityAssayValid

def MotorProcessivityClosed (P : MotorProcessivityPackage) : Prop :=
  P.atpConcentrationDependence ∧ P.processivityAssayValid

theorem motor_processivity_closed_from_evidence (P : MotorProcessivityPackage)
    (E : MotorProcessivityEvidence P) : MotorProcessivityClosed P := by
  exact And.intro E.atpConcentrationDependenceClosed E.processivityAssayValidClosed

end CellBiologyMicrotubulesMotorsCanonicalLaneLean
end HautevilleHouse
