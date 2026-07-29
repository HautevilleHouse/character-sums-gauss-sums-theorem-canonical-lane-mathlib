import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.CharacterSumsGaussSumsTheoremCanonicalLaneLean.MultiplicativeCharacters
import HautevilleHouse.CharacterSumsGaussSumsTheoremCanonicalLaneLean.GaussSums
import HautevilleHouse.CharacterSumsGaussSumsTheoremCanonicalLaneLean.JacobiSums

namespace HautevilleHouse
namespace CharacterSumsGaussSumsTheoremCanonicalLaneLean

open MultiplicativeCharacters

structure CharacterSumEvaluationPackage (G : Type) [AddCommGroup G] (P : CharacterPackage G) where
  gaussSumPackage : GaussSumPackage G P
  jacobiSumPackage : JacobiSumPackage G P
  gaussSumEvaluation : ℂ
  jacobiSumEvaluation : ℂ
  evaluationRelation : Prop
  evaluationRelationTerm : evaluationRelation

structure CharacterSumEvaluationEvidence {G : Type} [AddCommGroup G] {P : CharacterPackage G} (E : CharacterSumEvaluationPackage G P) where
  evaluationRelationClosed : E.evaluationRelation

def CharacterSumEvaluationClosed {G : Type} [AddCommGroup G] {P : CharacterPackage G} (E : CharacterSumEvaluationPackage G P) : Prop :=
  E.evaluationRelation

theorem character_sum_evaluation_closed_from_evidence {G : Type} [AddCommGroup G] {P : CharacterPackage G} (E : CharacterSumEvaluationPackage G P) (Ev : CharacterSumEvaluationEvidence E) :
    CharacterSumEvaluationClosed E := by
  exact Ev.evaluationRelationClosed

end CharacterSumsGaussSumsTheoremCanonicalLaneLean
end HautevilleHouse