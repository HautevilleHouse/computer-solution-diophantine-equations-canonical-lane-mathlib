import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ComputerSolutionDiophantineEquationsCanonicalLaneLean

structure UndecidableDiophantineSetPackage where
  setDefinition : Nat → Prop
  diophantineRepresentation : String
  undecidable : Prop
  matiyasevichReduction : String
  completenessWrtRecursivelyEnumerable : Prop

structure UndecidableDiophantineSetEvidence (U : UndecidableDiophantineSetPackage) where
  diophantineRepresentationClosed : U.diophantineRepresentation
  undecidableClosed : U.undecidable
  completenessWrtRecursivelyEnumerableClosed : U.completenessWrtRecursivelyEnumerable

def UndecidableDiophantineSetClosed (U : UndecidableDiophantineSetPackage) : Prop :=
  U.diophantineRepresentation ∧ U.undecidable ∧ U.completenessWrtRecursivelyEnumerable

theorem undecidable_diophantine_set_closed_from_evidence (U : UndecidableDiophantineSetPackage) (E : UndecidableDiophantineSetEvidence U) : UndecidableDiophantineSetClosed U :=
  And.intro E.diophantineRepresentationClosed (And.intro E.undecidableClosed E.completenessWrtRecursivelyEnumerableClosed)

end HautevilleHouse.ComputerSolutionDiophantineEquationsCanonicalLaneLean
end HautevilleHouse