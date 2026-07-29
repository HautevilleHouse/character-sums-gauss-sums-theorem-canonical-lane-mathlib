import canonicalLaneMathlib.AdmissibleClass
import Mathlib.NumberTheory.Character

namespace HautevilleHouse
namespace CharacterSumsGaussSumsTheoremCanonicalLaneLean

structure CharacterSumsPackage where
  group : Type u
  character : Type v
  sumOverGroup : Type w
  groupFinite : Prop
  orthogonalityRelation : Prop
  sumOverNonTrivial : Prop
  evaluationFormulas : Prop

structure CharacterSumsEvidence (C : CharacterSumsPackage) where
  groupFiniteClosed : C.groupFinite
  orthogonalityRelationClosed : C.orthogonalityRelation
  sumOverNonTrivialClosed : C.sumOverNonTrivial
  evaluationFormulasClosed : C.evaluationFormulas

def CharacterSumsClosed (C : CharacterSumsPackage) : Prop :=
  C.groupFinite ∧ C.orthogonalityRelation ∧ C.sumOverNonTrivial ∧ C.evaluationFormulas

theorem character_sums_closed_from_evidence (C : CharacterSumsPackage) (E : CharacterSumsEvidence C) :
    CharacterSumsClosed C := by
  exact And.intro E.groupFiniteClosed (And.intro E.orthogonalityRelationClosed (And.intro E.sumOverNonTrivialClosed E.evaluationFormulasClosed))

end CharacterSumsGaussSumsTheoremCanonicalLaneLean
end HautevilleHouse
