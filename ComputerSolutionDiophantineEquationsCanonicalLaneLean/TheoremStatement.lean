import canonicalLaneMathlib.TheoremStatement

namespace HautevilleHouse
namespace ComputerSolutionDiophantineEquationsCanonicalLaneLean

structure DiophantineTheoremStatement where
  sourceKey : String
  theoremName : String
  theoremObject : String
  classicalBoundary : String
  constrainedStatement : String
  certificateLane : String
  carriedRemainder : String

def diophantineTheoremStatement : DiophantineTheoremStatement := {
  sourceKey := "computer-solution-diophantine-equations",
  theoremName := "Undecidability of Diophantine Equations",
  theoremObject := "Hilbert's Tenth Problem",
  classicalBoundary := "classical source boundary",
  constrainedStatement := "admissible-class closure for Diophantine undecidability",
  certificateLane := "diophantine_constrained",
  carriedRemainder := "unrestricted classical boundary carried by theoremBoundaryOpen"
}

end ComputerSolutionDiophantineEquationsCanonicalLaneLean
end HautevilleHouse