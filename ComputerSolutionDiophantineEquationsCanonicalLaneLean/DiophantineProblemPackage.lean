import ComputerSolutionDiophantineEquationsCanonicalLaneLean.DiophantineAdmissibleClass

namespace HautevilleHouse
namespace ComputerSolutionDiophantineEquationsCanonicalLaneLean

structure DiophantineProblemPackage where
  polynomialFamily : ℕ → ℕ → ℤ
  degreeBound : ℕ
  variableBound : ℕ
  solubleProblem : Prop
  unsolvableProblem : Prop

structure DiophantineProblemEvidence (P : DiophantineProblemPackage) where
  solubleClosed : P.solubleProblem
  unsolvableClosed : P.unsolvableProblem

def DiophantineProblemClosed (P : DiophantineProblemPackage) : Prop :=
  P.solubleProblem ∧ P.unsolvableProblem

theorem diophantine_problem_closed_from_evidence (P : DiophantineProblemPackage)
    (E : DiophantineProblemEvidence P) : DiophantineProblemClosed P := by
  exact And.intro E.solubleClosed E.unsolvableClosed

end ComputerSolutionDiophantineEquationsCanonicalLaneLean
end HautevilleHouse