import ComputerSolutionDiophantineEquationsCanonicalLaneLean.DiophantineUndecidabilityPackage

namespace HautevilleHouse
namespace ComputerSolutionDiophantineEquationsCanonicalLaneLean

structure DiophantineComplexityPackage where
  degreeBound : ℕ
  solutionBound : ℕ
  existentialStructure : Prop
  mSetEncoding : Prop
  npCompleteReduction : Prop

structure DiophantineComplexityEvidence (C : DiophantineComplexityPackage) where
  existentialStructureClosed : C.existentialStructure
  mSetEncodingClosed : C.mSetEncoding
  npCompleteReductionClosed : C.npCompleteReduction

def DiophantineComplexityClosed (C : DiophantineComplexityPackage) : Prop :=
  C.existentialStructure ∧ C.mSetEncoding ∧ C.npCompleteReduction

theorem diophantine_complexity_closed_from_evidence (C : DiophantineComplexityPackage)
    (E : DiophantineComplexityEvidence C) : DiophantineComplexityClosed C := by
  exact And.intro E.existentialStructureClosed
    (And.intro E.mSetEncodingClosed E.npCompleteReductionClosed)

end ComputerSolutionDiophantineEquationsCanonicalLaneLean
end HautevilleHouse