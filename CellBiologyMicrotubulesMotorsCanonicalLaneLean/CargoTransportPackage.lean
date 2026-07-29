import HautevilleHouse.CellBiologyMicrotubulesMotorsCanonicalLaneLean.MotorDynamicsPackage

namespace HautevilleHouse
namespace CellBiologyMicrotubulesMotorsCanonicalLaneLean

structure CargoTransportPackage {F : MicrotubuleFilament} {M : MotorProteinFamily} (D : MotorDynamicsPackage F M) where
  cargoLoad : Float
  runLength : Float
  stallForce : Float
  cooperativityFactor : Float
  transportEfficiency : Float

structure CargoTransportEvidence {F : MicrotubuleFilament} {M : MotorProteinFamily} {D : MotorDynamicsPackage F M} (T : CargoTransportPackage D) where
  cargoLoadClosed : T.cargoLoad > 0.0
  runLengthClosed : T.runLength > 0.0
  stallForceClosed : T.stallForce > 0.0
  cooperativityFactorClosed : T.cooperativityFactor ≥ 1.0
  transportEfficiencyClosed : T.transportEfficiency > 0.0

def CargoTransportClosed {F : MicrotubuleFilament} {M : MotorProteinFamily} {D : MotorDynamicsPackage F M} (T : CargoTransportPackage D) : Prop :=
  T.cargoLoad > 0.0 ∧ T.runLength > 0.0 ∧ T.stallForce > 0.0 ∧ T.cooperativityFactor ≥ 1.0 ∧ T.transportEfficiency > 0.0

theorem cargo_transport_closed_from_evidence
    {F : MicrotubuleFilament} {M : MotorProteinFamily} {D : MotorDynamicsPackage F M} (T : CargoTransportPackage D) (E : CargoTransportEvidence T) :
    CargoTransportClosed T := by
  exact And.intro E.cargoLoadClosed
    (And.intro E.runLengthClosed
      (And.intro E.stallForceClosed
        (And.intro E.cooperativityFactorClosed E.transportEfficiencyClosed)))

end CellBiologyMicrotubulesMotorsCanonicalLaneLean
end HautevilleHouse
