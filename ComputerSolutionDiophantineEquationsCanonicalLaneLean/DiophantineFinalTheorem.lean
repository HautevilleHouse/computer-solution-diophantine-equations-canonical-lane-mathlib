import ComputerSolutionDiophantineEquationsCanonicalLaneLean.DiophantineGateLemmas

namespace HautevilleHouse
namespace ComputerSolutionDiophantineEquationsCanonicalLaneLean

def ConstrainedDiophantineClosure (A : AdmissibleClass) : Prop :=
  bridgeClosed A ∧ gateClosed A

theorem constrained_diophantine_endgame (A : AdmissibleClass) :
    ConstrainedDiophantineClosure A := by
  exact And.intro (bridge_from_admissible_class A) (gate_from_admissible_class A)

end ComputerSolutionDiophantineEquationsCanonicalLaneLean
end HautevilleHouse