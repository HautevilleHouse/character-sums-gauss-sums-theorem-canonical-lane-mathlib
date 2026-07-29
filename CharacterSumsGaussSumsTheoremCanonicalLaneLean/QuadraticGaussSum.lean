import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CharacterSumsGaussSumsTheoremCanonicalLaneLean

structure QuadraticGaussSumPackage where
  prime : ℕ
  quadraticCharacter : ℤ → ℂ
  gaussSum : ℂ
  quadraticReciprocityConnected : Prop

structure QuadraticGaussSumEvidence (Q : QuadraticGaussSumPackage) where
  primeCondition : Nat.Prime Q.prime
  characterFormula : ∀ a : ℤ, Q.quadraticCharacter a = if a % Q.prime = 0 then 0 else Complex.exp (2 * π * I * (a : ℂ) / (Q.prime : ℂ))
  gaussSumDefined : Q.gaussSum = ∑ a : ℤ, Q.quadraticCharacter a * Complex.exp (2 * π * I * (a : ℂ) / (Q.prime : ℂ))
  quadraticReciprocityConnectedClosed : Q.quadraticReciprocityConnected

def QuadraticGaussSumClosed (Q : QuadraticGaussSumPackage) : Prop := Q.quadraticReciprocityConnected ∧ (∃ qE : QuadraticGaussSumEvidence Q, True)

end HautevilleHouse
end CharacterSumsGaussSumsTheoremCanonicalLaneLean
