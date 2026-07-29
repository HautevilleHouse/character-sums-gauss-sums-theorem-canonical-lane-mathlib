import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.CharacterSumsGaussSumsTheoremCanonicalLaneLean.GaussSums

namespace HautevilleHouse
namespace CharacterSumsGaussSumsTheoremCanonicalLaneLean

open MultiplicativeCharacters

structure QuadraticCharacter (p : ℕ) [Fact (Nat.Prime p)] where
  toFun : ℤ → ℂ
  legendreSymbol : ℤ → ℤ
  isQuadratic : ∀ x : ℤ, toFun x ^ 2 = 1

structure QuadraticGaussSumPackage (p : ℕ) [Fact (Nat.Prime p)] (P : CharacterPackage (ℤ/pℤ)) where
  quadraticCharacter : QuadraticCharacter p
  quadraticGaussSum : ℂ
  quadraticGaussSumValue : Prop

structure QuadraticGaussSumEvidence {p : ℕ} [Fact (Nat.Prime p)] {P : CharacterPackage (ℤ/pℤ)} (Q : QuadraticGaussSumPackage p P) where
  quadraticGaussSumValueClosed : Q.quadraticGaussSumValue

def QuadraticGaussSumClosed {p : ℕ} [Fact (Nat.Prime p)] {P : CharacterPackage (ℤ/pℤ)} (Q : QuadraticGaussSumPackage p P) : Prop :=
  Q.quadraticGaussSumValue

theorem quadratic_gauss_sum_closed_from_evidence {p : ℕ} [Fact (Nat.Prime p)] {P : CharacterPackage (ℤ/pℤ)} (Q : QuadraticGaussSumPackage p P) (E : QuadraticGaussSumEvidence Q) :
    QuadraticGaussSumClosed Q := by
  exact E.quadraticGaussSumValueClosed

end CharacterSumsGaussSumsTheoremCanonicalLaneLean
end HautevilleHouse