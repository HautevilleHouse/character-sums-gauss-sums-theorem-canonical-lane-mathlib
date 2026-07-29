import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CharacterSumsGaussSumsTheoremCanonicalLaneLean

structure Character (G : Type) [AddCommGroup G] where
  toFun : G → ℂ
  multiplicative : ∀ x y : G, toFun (x + y) = toFun x * toFun y
  unitValue : toFun 0 = 1

structure CharacterPackage (G : Type) [AddCommGroup G] where
  characters : Set (Character G)
  trivialCharacter : Character G
  orthogonality : Prop
  characterSum : Prop

structure CharacterEvidence {G : Type} [AddCommGroup G] (P : CharacterPackage G) where
  trivialCharacterClosed : P.trivialCharacter.multiative ∧ P.trivialCharacter.unitValue
  orthogonalityClosed : P.orthogonality
  characterSumClosed : P.characterSum

def CharacterClosed {G : Type} [AddCommGroup G] (P : CharacterPackage G) : Prop :=
  P.orthogonality ∧ P.characterSum

theorem character_closed_from_evidence {G : Type} [AddCommGroup G] (P : CharacterPackage G) (E : CharacterEvidence P) :
    CharacterClosed P := by
  exact And.intro E.orthogonalityClosed E.characterSumClosed

end CharacterSumsGaussSumsTheoremCanonicalLaneLean
end HautevilleHouse