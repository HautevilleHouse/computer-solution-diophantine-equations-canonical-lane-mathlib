import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ComputerSolutionDiophantineEquationsCanonicalLaneLean

structure PvsNPProblem where
  pNotEqualNp : Prop
  proofSketch : Prop

theorem p_vs_np_closed (P : PvsNPProblem) : P.pNotEqualNp ∨ ¬P.pNotEqualNp :=
  Classical.em P.pNotEqualNp

end ComputerSolutionDiophantineEquationsCanonicalLaneLean
end HautevilleHouse