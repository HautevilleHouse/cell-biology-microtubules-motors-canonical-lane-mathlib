import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CellBiologyMicrotubulesMotors

structure CargoSortingPackage {M : MotorProteinDynamicsPackage}
    {D : MotorProteinDynamicsClosed M}
    {C : CollectiveTransportPackage D} (T : CollectiveTransportClosed C) where
  cargoType : Type
  sortingSignal : Prop
  directionalBias : Prop
  deliveryAccuracy : Prop

structure CargoSortingEvidence {M : MotorProteinDynamicsPackage}
    {D : MotorProteinDynamicsClosed M}
    {C : CollectiveTransportPackage D} {T : CollectiveTransportClosed C}
    (S : CargoSortingPackage T) where
  sortingSignalClosed : S.sortingSignal
  directionalBiasClosed : S.directionalBias
  deliveryAccuracyClosed : S.deliveryAccuracy

def CargoSortingClosed {M : MotorProteinDynamicsPackage}
    {D : MotorProteinDynamicsClosed M}
    {C : CollectiveTransportPackage D} {T : CollectiveTransportClosed C}
    (S : CargoSortingPackage T) : Prop :=
  S.sortingSignal ∧ S.directionalBias ∧ S.deliveryAccuracy

theorem cargo_sorting_closed_from_evidence {M : MotorProteinDynamicsPackage}
    {D : MotorProteinDynamicsClosed M}
    {C : CollectiveTransportPackage D} {T : CollectiveTransportClosed C}
    (S : CargoSortingPackage T) (E : CargoSortingEvidence S) : CargoSortingClosed S := by
  exact And.intro E.sortingSignalClosed (And.intro E.directionalBiasClosed
    E.deliveryAccuracyClosed)

end CellBiologyMicrotubulesMotors
end HautevilleHouse
