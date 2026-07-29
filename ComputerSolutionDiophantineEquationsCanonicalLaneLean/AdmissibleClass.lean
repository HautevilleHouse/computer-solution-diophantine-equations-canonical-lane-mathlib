import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ComputerSolutionDiophantineEquationsCanonicalLaneLean

structure DiophantineAdmittedObject where
  polynomial : List ℤ
  dimension : ℕ
  hasSolution : Prop
  undecidable : Prop

structure AdmissibleClass where
  object : DiophantineAdmittedObject
  endpointSatisfied : Prop
  remainderRecorded : Prop
  gateWitness : endpointSatisfied ∨ remainderRecorded

def admittedClosure (A : AdmissibleClass) : Prop :=
  DiophantineWitnessClosed A.object ∧ (A.endpointSatisfied ∨ A.remainderRecorded)

end ComputerSolutionDiophantineEquationsCanonicalLaneLean
end HautevilleHouse