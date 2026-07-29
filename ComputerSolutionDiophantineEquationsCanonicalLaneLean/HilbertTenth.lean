import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ComputerSolutionDiophantineEquationsCanonicalLaneLean

structure HilbertTenthProblem where
  polynomialFamily : Type u
  integerSolver : Type v
  undecidabilityClaim : Prop
  matiyasevichTheorem : Prop

def HilbertTenthClosed (H : HilbertTenthProblem) : Prop :=
  H.undecidabilityClaim ∧ H.matiyasevichTheorem

theorem hilbert_tenth_from_evidence (H : HilbertTenthProblem)
    (h1 : H.undecidabilityClaim) (h2 : H.matiyasevichTheorem) :
    HilbertTenthClosed H :=
  And.intro h1 h2

end ComputerSolutionDiophantineEquationsCanonicalLaneLean
end HautevilleHouse