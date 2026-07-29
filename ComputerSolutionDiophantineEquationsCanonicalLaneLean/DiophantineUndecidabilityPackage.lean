import ComputerSolutionDiophantineEquationsCanonicalLaneLean.DiophantineProblemPackage

namespace HautevilleHouse
namespace ComputerSolutionDiophantineEquationsCanonicalLaneLean

structure DiophantineUndecidabilityPackage where
  problemReduction : DiophantineProblemPackage → DiophantineProblemPackage
  unsolvableProjection : Prop
  haltingReduction : Prop
  undecidabilityWitness : Prop

structure DiophantineUndecidabilityEvidence (U : DiophantineUndecidabilityPackage) where
  unsolvableProjectionClosed : U.unsolvableProjection
  haltingReductionClosed : U.haltingReduction
  undecidabilityWitnessClosed : U.undecidabilityWitness

def DiophantineUndecidabilityClosed (U : DiophantineUndecidabilityPackage) : Prop :=
  U.unsolvableProjection ∧ U.haltingReduction ∧ U.undecidabilityWitness

theorem diophantine_undecidability_closed_from_evidence (U : DiophantineUndecidabilityPackage)
    (E : DiophantineUndecidabilityEvidence U) : DiophantineUndecidabilityClosed U := by
  exact And.intro E.unsolvableProjectionClosed
    (And.intro E.haltingReductionClosed E.undecidabilityWitnessClosed)

end ComputerSolutionDiophantineEquationsCanonicalLaneLean
end HautevilleHouse