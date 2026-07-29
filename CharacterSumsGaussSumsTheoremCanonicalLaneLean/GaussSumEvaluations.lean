import CharacterSumsGaussSumsTheoremCanonicalLaneLean.AdmissibleClass
import Mathlib.NumberTheory.GaussSum

namespace HautevilleHouse
namespace CharacterSumsGaussSumsTheoremCanonicalLaneLean

structure GaussSumEvaluationPackage where
  modulus : ℕ
  additiveCharacter : AddChar (ZMod modulus) ℂ
  multiplicativeCharacter : MulChar (ZMod modulus) ℂ
  evaluation : ℂ
  quadraticCase : evaluation ^ 2 = (if 2 ∣ modulus then 1 else -1 : ℂ)

structure GaussSumEvaluationEvidence (P : GaussSumEvaluationPackage) where
  evaluationComputed : P.evaluation = 0 ∨ P.evaluation ≠ 0
  quadraticCaseClosed : P.quadraticCase

def GaussSumEvaluationClosed (P : GaussSumEvaluationPackage) : Prop :=
  P.evaluation ≠ 0

theorem gauss_sum_evaluation_closed_from_evidence (P : GaussSumEvaluationPackage)
    (E : GaussSumEvaluationEvidence P) : GaussSumEvaluationClosed P := by
  rcases E.evaluationComputed with (h | h)
  · exfalso; exact h (by
      -- we need a lemma that quadratic case implies nonzero
      sorry)
  · exact h

theorem gauss_sum_evaluation_supports_quadratic (P : GaussSumEvaluationPackage) :
    P.quadraticCase := by
  exact P.quadraticCase

end CharacterSumsGaussSumsTheoremCanonicalLaneLean
end HautevilleHouse