import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ComputerSolutionDiophantineEquationsCanonicalLaneLean

structure ArithmeticalHierarchy where
  sigmaZero : Type u
  piZero : Type v
  completeProblems : Prop
  postTheorem : Prop

def HierarchyClosed (H : ArithmeticalHierarchy) : Prop :=
  H.completeProblems ∧ H.postTheorem

theorem hierarchy_closed_from_evidence (H : ArithmeticalHierarchy)
    (h1 : H.completeProblems) (h2 : H.postTheorem) :
    HierarchyClosed H :=
  And.intro h1 h2

end ComputerSolutionDiophantineEquationsCanonicalLaneLean
end HautevilleHouse