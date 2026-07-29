import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ComputerSolutionDiophantineEquationsCanonicalLaneLean

structure DiophantineSet where
  parameterSet : Type u
  polynomialDef : Type v
  diophantineRepresentation : Prop
  davisPutnamRobinsonMatiyasevich : Prop

def DiophantineClosed (D : DiophantineSet) : Prop :=
  D.diophantineRepresentation ∧ D.davisPutnamRobinsonMatiyasevich

theorem diophantine_closed_from_evidence (D : DiophantineSet)
    (h1 : D.diophantineRepresentation) (h2 : D.davisPutnamRobinsonMatiyasevich) :
    DiophantineClosed D :=
  And.intro h1 h2

end ComputerSolutionDiophantineEquationsCanonicalLaneLean
end HautevilleHouse