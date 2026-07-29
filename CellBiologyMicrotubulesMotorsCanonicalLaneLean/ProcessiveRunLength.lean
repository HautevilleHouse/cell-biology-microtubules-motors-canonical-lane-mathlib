import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CellBiologyMicrotubulesMotorsCanonicalLaneLean

structure ProcessiveRunPackage where
  stepSizeDistribution : Prop
  runLengthDistribution : Prop
  velocityDistribution : Prop
  stallForceRecorded : Prop
  processivityFactor : Prop
  externalLoadEffect : Prop

structure ProcessiveRunEvidence (P : ProcessiveRunPackage) where
  stepSizeDistributionClosed : P.stepSizeDistribution
  runLengthDistributionClosed : P.runLengthDistribution
  velocityDistributionClosed : P.velocityDistribution
  stallForceRecordedClosed : P.stallForceRecorded
  processivityFactorClosed : P.processivityFactor
  externalLoadEffectClosed : P.externalLoadEffect

def ProcessiveRunClosed (P : ProcessiveRunPackage) : Prop :=
  P.stepSizeDistribution ∧ P.runLengthDistribution ∧ P.velocityDistribution ∧ P.stallForceRecorded ∧ P.processivityFactor ∧ P.externalLoadEffect

theorem processive_run_closed_from_evidence (P : ProcessiveRunPackage) (E : ProcessiveRunEvidence P) : ProcessiveRunClosed P := by
  exact And.intro E.stepSizeDistributionClosed (And.intro E.runLengthDistributionClosed (And.intro E.velocityDistributionClosed (And.intro E.stallForceRecordedClosed (And.intro E.processivityFactorClosed E.externalLoadEffectClosed))))

end CellBiologyMicrotubulesMotorsCanonicalLaneLean
end HautevilleHouse
