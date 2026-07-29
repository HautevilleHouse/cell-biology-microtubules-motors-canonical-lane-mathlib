import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CellBiologyMicrotubulesMotorsCanonicalLaneLean

structure MicrotubuleAssociatedProteinsPackage where
  structuralMAPsTau : Prop
  plusEndTrackingProteins : Prop
  severingEnzymes : Prop
  depolymerizingKinesins : Prop
  crosslinkingProteins : Prop

structure MicrotubuleAssociatedProteinsEvidence (M : MicrotubuleAssociatedProteinsPackage) where
  structuralMAPsTauClosed : M.structuralMAPsTau
  plusEndTrackingProteinsClosed : M.plusEndTrackingProteins
  severingEnzymesClosed : M.severingEnzymes
  depolymerizingKinesinsClosed : M.depolymerizingKinesins
  crosslinkingProteinsClosed : M.crosslinkingProteins

def MicrotubuleAssociatedProteinsClosed (M : MicrotubuleAssociatedProteinsPackage) : Prop :=
  M.structuralMAPsTau ∧ M.plusEndTrackingProteins ∧ M.severingEnzymes ∧
  M.depolymerizingKinesins ∧ M.crosslinkingProteins

theorem microtubule_associated_proteins_closed_from_evidence
    (M : MicrotubuleAssociatedProteinsPackage)
    (E : MicrotubuleAssociatedProteinsEvidence M) :
    MicrotubuleAssociatedProteinsClosed M := by
  exact And.intro E.structuralMAPsTauClosed
    (And.intro E.plusEndTrackingProteinsClosed
      (And.intro E.severingEnzymesClosed
        (And.intro E.depolymerizingKinesinsClosed E.crosslinkingProteinsClosed)))

end CellBiologyMicrotubulesMotorsCanonicalLaneLean
end HautevilleHouse