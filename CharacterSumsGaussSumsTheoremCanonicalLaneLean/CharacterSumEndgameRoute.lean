import CharacterSumsGaussSumsTheoremCanonicalLaneLean.FinalTheorem
import CharacterSumsGaussSumsTheoremCanonicalLaneLean.GaussSumEvaluations
import CharacterSumsGaussSumsTheoremCanonicalLaneLean.CharacterSumBasicProperties
import CharacterSumsGaussSumsTheoremCanonicalLaneLean.StickelbergerTheorem
import Mathlib.NumberTheory.GaussSum

namespace HautevilleHouse
namespace CharacterSumsGaussSumsTheoremCanonicalLaneLean

structure CharacterSumEndgameRoute (A : AdmissibleClass) where
  gaussEval : GaussSumEvaluationPackage
  gaussEvalEvidence : GaussSumEvaluationEvidence gaussEval
  multCharPkg : MultiplicativeCharacterPackage
  multCharEvidence : MultiplicativeCharacterEvidence multCharPkg
  addCharPkg : AdditiveCharacterPackage
  addCharEvidence : AdditiveCharacterEvidence addCharPkg
  stickelPkg : StickelbergerPackage
  stickelEvidence : StickelbergerEvidence stickelPkg
  bridgeClosedFromRoute : bridgeClosed A
  gateClosedFromRoute : gateClosed A

theorem character_sum_endgame_yields_constrained_closure
    (A : AdmissibleClass) (R : CharacterSumEndgameRoute A) :
    ConstrainedCharacterSumClosure A := by
  exact And.intro R.bridgeClosedFromRoute R.gateClosedFromRoute

end CharacterSumsGaussSumsTheoremCanonicalLaneLean
end HautevilleHouse