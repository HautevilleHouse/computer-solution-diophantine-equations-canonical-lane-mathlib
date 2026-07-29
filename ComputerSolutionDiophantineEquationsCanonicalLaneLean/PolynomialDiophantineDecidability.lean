import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ComputerSolutionDiophantineEquationsCanonicalLaneLean

structure PolynomialDiophantineDecidabilityPackage where
  polynomialFamily : String
  coefficientDomain : Type
  decisionAlgorithmExists : Prop
  degreeConstraint : Nat
  numberTheoryReduction : Prop
  mathematicalProof : Prop

structure PolynomialDiophantineDecidabilityEvidence (P : PolynomialDiophantineDecidabilityPackage) where
  decisionAlgorithmExistsClosed : P.decisionAlgorithmExists
  degreeConstraintClosed : P.degreeConstraint
  numberTheoryReductionClosed : P.numberTheoryReduction
  mathematicalProofClosed : P.mathematicalProof

def PolynomialDiophantineDecidabilityClosed (P : PolynomialDiophantineDecidabilityPackage) : Prop :=
  P.decisionAlgorithmExists ∧ P.degreeConstraint ∧ P.numberTheoryReduction ∧ P.mathematicalProof

theorem polynomial_diophantine_decidability_closed_from_evidence (P : PolynomialDiophantineDecidabilityPackage) (E : PolynomialDiophantineDecidabilityEvidence P) : PolynomialDiophantineDecidabilityClosed P :=
  And.intro E.decisionAlgorithmExistsClosed (And.intro E.degreeConstraintClosed (And.intro E.numberTheoryReductionClosed E.mathematicalProofClosed))

end HautevilleHouse.ComputerSolutionDiophantineEquationsCanonicalLaneLean
end HautevilleHouse