import canonicalLaneMathlib.BridgeLemmas

namespace HautevilleHouse
namespace ComputerSolutionDiophantineEquationsCanonicalLaneLean

open HautevilleHouse.CanonicalLaneMathlibCore

def bridgeClosed (A : AdmissibleClass) : Prop :=
  DiophantineWitnessClosed A.object

theorem bridge_from_admissible_class (A : AdmissibleClass) :
    bridgeClosed A := by
  exact A.object.conclusion

end ComputerSolutionDiophantineEquationsCanonicalLaneLean
end HautevilleHouse