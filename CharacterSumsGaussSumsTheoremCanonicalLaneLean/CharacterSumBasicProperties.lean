import CharacterSumsGaussSumsTheoremCanonicalLaneLean.AdmissibleClass
import Mathlib.NumberTheory.ArithmeticFunction

namespace HautevilleHouse
namespace CharacterSumsGaussSumsTheoremCanonicalLaneLean

structure MultiplicativeCharacterPackage where
  field : Type
  [fieldFintype : Fintype field]
  χ : MulChar field ℂ
  nontrivial : χ ≠ 1
  orthogonality : ∀ a : field, a ≠ 0 → ∑ x : field, χ x = 0

structure MultiplicativeCharacterEvidence (P : MultiplicativeCharacterPackage) where
  orthogonalityClosed : P.orthogonality
  nontrivialClosed : P.nontrivial

def MultiplicativeCharacterClosed (P : MultiplicativeCharacterPackage) : Prop :=
  P.orthogonality ∧ P.nontrivial

theorem multiplicative_character_closed_from_evidence (P : MultiplicativeCharacterPackage)
    (E : MultiplicativeCharacterEvidence P) : MultiplicativeCharacterClosed P := by
  exact And.intro E.orthogonalityClosed E.nontrivialClosed

structure AdditiveCharacterPackage where
  field : Type
  [fieldFintype : Fintype field]
  ψ : AddChar field ℂ
  nontrivial : ψ ≠ 1
  orthogonality : ∀ a : field, a ≠ 0 → ∑ x : field, ψ (a*x) = 0

structure AdditiveCharacterEvidence (P : AdditiveCharacterPackage) where
  orthogonalityClosed : P.orthogonality
  nontrivialClosed : P.nontrivial

def AdditiveCharacterClosed (P : AdditiveCharacterPackage) : Prop :=
  P.orthogonality ∧ P.nontrivial

theorem additive_character_closed_from_evidence (P : AdditiveCharacterPackage)
    (E : AdditiveCharacterEvidence P) : AdditiveCharacterClosed P := by
  exact And.intro E.orthogonalityClosed E.nontrivialClosed

end CharacterSumsGaussSumsTheoremCanonicalLaneLean
end HautevilleHouse