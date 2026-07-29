import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ComputerSolutionDiophantineEquationsCanonicalLaneLean

structure DiophantineComplexityHierarchyPackage where
  polynomialDegreeBound : Nat
  exponentialGrowth : Prop
  doubleExponentialGrowth : Prop
  nPCompleteBound : Nat
  quantifierAlternationDepth : Nat

structure DiophantineComplexityHierarchyEvidence (D : DiophantineComplexityHierarchyPackage) where
  exponentialGrowthClosed : D.exponentialGrowth
  doubleExponentialGrowthClosed : D.doubleExponentialGrowth
  nPCompleteBoundClosed : D.nPCompleteBound
  quantifierAlternationDepthClosed : D.quantifierAlternationDepth

def DiophantineComplexityHierarchyClosed (D : DiophantineComplexityHierarchyPackage) : Prop :=
  D.exponentialGrowth ∧ D.doubleExponentialGrowth ∧ D.nPCompleteBound ∧ D.quantifierAlternationDepth

theorem diophantine_complexity_hierarchy_closed_from_evidence (D : DiophantineComplexityHierarchyPackage) (E : DiophantineComplexityHierarchyEvidence D) : DiophantineComplexityHierarchyClosed D :=
  And.intro E.exponentialGrowthClosed (And.intro E.doubleExponentialGrowthClosed (And.intro E.nPCompleteBoundClosed E.quantifierAlternationDepthClosed))

end HautevilleHouse.ComputerSolutionDiophantineEquationsCanonicalLaneLean
end HautevilleHouse