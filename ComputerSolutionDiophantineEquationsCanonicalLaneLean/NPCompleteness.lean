import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ComputerSolutionDiophantineEquationsCanonicalLaneLean

structure NPCompleteness where
  problemClass : Type u
  reductionProof : Prop
  cookLevinTheorem : Prop
  karpReductionExists : Prop

def NPCompleteClosed (N : NPCompleteness) : Prop :=
  N.reductionProof ∧ N.cookLevinTheorem ∧ N.karpReductionExists

theorem np_complete_from_evidence (N : NPCompleteness)
    (h1 : N.reductionProof) (h2 : N.cookLevinTheorem) (h3 : N.karpReductionExists) :
    NPCompleteClosed N :=
  And.intro h1 (And.intro h2 h3)

end ComputerSolutionDiophantineEquationsCanonicalLaneLean
end HautevilleHouse