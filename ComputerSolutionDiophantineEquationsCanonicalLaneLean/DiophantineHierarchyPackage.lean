import ComputerSolutionDiophantineEquationsCanonicalLaneLean.DiophantineComplexityPackage

namespace HautevilleHouse
namespace ComputerSolutionDiophantineEquationsCanonicalLaneLean

structure DiophantineHierarchyPackage where
  arithmeticHierarchyLevel : ℕ
  tallySetReduction : Prop
  oracleRelativeComputability : Prop
  jumpOperatorStructure : Prop

structure DiophantineHierarchyEvidence (H : DiophantineHierarchyPackage) where
  tallySetReductionClosed : H.tallySetReduction
  oracleRelativeComputabilityClosed : H.oracleRelativeComputability
  jumpOperatorStructureClosed : H.jumpOperatorStructure

def DiophantineHierarchyClosed (H : DiophantineHierarchyPackage) : Prop :=
  H.tallySetReduction ∧ H.oracleRelativeComputability ∧ H.jumpOperatorStructure

theorem diophantine_hierarchy_closed_from_evidence (H : DiophantineHierarchyPackage)
    (E : DiophantineHierarchyEvidence H) : DiophantineHierarchyClosed H := by
  exact And.intro E.tallySetReductionClosed
    (And.intro E.oracleRelativeComputabilityClosed E.jumpOperatorStructureClosed)

end ComputerSolutionDiophantineEquationsCanonicalLaneLean
end HautevilleHouse