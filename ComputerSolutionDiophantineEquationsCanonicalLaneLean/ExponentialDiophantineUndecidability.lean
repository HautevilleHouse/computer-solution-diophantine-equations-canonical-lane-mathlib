import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ComputerSolutionDiophantineEquationsCanonicalLaneLean

structure ExponentialDiophantineUndecidabilityPackage where
  exponentialFunctionSymbol : String
  equationClass : String
  undecidable : Prop
  reductionFromPolynomial : Prop
  analyticNumberTheoryUsed : Prop

structure ExponentialDiophantineUndecidabilityEvidence (E : ExponentialDiophantineUndecidabilityPackage) where
  undecidableClosed : E.undecidable
  reductionFromPolynomialClosed : E.reductionFromPolynomial
  analyticNumberTheoryUsedClosed : E.analyticNumberTheoryUsed

def ExponentialDiophantineUndecidabilityClosed (E : ExponentialDiophantineUndecidabilityPackage) : Prop :=
  E.undecidable ∧ E.reductionFromPolynomial ∧ E.analyticNumberTheoryUsed

theorem exponential_diophantine_undecidability_closed_from_evidence (E : ExponentialDiophantineUndecidabilityPackage) (Ev : ExponentialDiophantineUndecidabilityEvidence E) : ExponentialDiophantineUndecidabilityClosed E :=
  And.intro Ev.undecidableClosed (And.intro Ev.reductionFromPolynomialClosed Ev.analyticNumberTheoryUsedClosed)

end HautevilleHouse.ComputerSolutionDiophantineEquationsCanonicalLaneLean
end HautevilleHouse