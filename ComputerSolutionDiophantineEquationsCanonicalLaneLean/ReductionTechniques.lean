import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ComputerSolutionDiophantineEquationsCanonicalLaneLean

structure PellEquationReduction where
  pellEquation : Type u
  parameterEncoding : Prop
  growthRateControl : Prop
  jonesTheorem : Prop

def PellReductionClosed (P : PellEquationReduction) : Prop :=
  P.parameterEncoding ∧ P.growthRateControl ∧ P.jonesTheorem

theorem pell_reduction_closed_from_evidence (P : PellEquationReduction)
    (h1 : P.parameterEncoding) (h2 : P.growthRateControl) (h3 : P.jonesTheorem) :
    PellReductionClosed P :=
  And.intro h1 (And.intro h2 h3)

end ComputerSolutionDiophantineEquationsCanonicalLaneLean
end HautevilleHouse