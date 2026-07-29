import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ComputerSolutionDiophantineEquationsCanonicalLaneLean

structure MatiyasevichTheoremPackage where
  diofantineness : Prop
  r.e.setRepresentation : Prop
  proofComplete : Prop

theorem matiyasevich_theorem_closed (M : MatiyasevichTheoremPackage) : M.diofantineness ∧ M.r.e.setRepresentation :=
  And.intro M.diofantineness M.r.e.setRepresentation

end ComputerSolutionDiophantineEquationsCanonicalLaneLean
end HautevilleHouse