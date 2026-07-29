import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.ComputerSolutionDiophantineEquationsCanonicalLaneLean.BridgeLemmas
import HautevilleHouse.ComputerSolutionDiophantineEquationsCanonicalLaneLean.GateLemmas

namespace HautevilleHouse
namespace ComputerSolutionDiophantineEquationsCanonicalLaneLean

def ConstrainedDiophantineClosure (A : AdmissibleClass) : Prop :=
  bridgeClosed A ∧ gateClosed A

theorem constrained_diophantine_endgame (A : AdmissibleClass) : ConstrainedDiophantineClosure A :=
  And.intro (bridge_from_admissible_class A) (gate_from_admissible_class A)

end HautevilleHouse.ComputerSolutionDiophantineEquationsCanonicalLaneLean
end HautevilleHouse