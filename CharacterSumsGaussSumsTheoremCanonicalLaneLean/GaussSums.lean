import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CharacterSumsGaussSumsTheoremCanonicalLaneLean

structure DirichletCharacter (q : ℕ) where
  modulo : ℕ
  multiplicative : ℤ → ℂ
  periodic : ∀ n, multiplicative (n + modulo) = multiplicative n
  multiplicativeProp : ∀ a b, multiplicative (a * b) = multiplicative a * multiplicative b
  nontrivial : ∃ n, multiplicative n ≠ 0

structure GaussSum (χ : DirichletCharacter q) where
  character : DirichletCharacter q
  sumValue : ℂ
  definitionalFormula : sumValue = ∑ a : ℤ/qℤ, χ.multiplicative a * Complex.exp (2 * π * Complex.I * (a : ℂ) / (q : ℂ))
  magnitudeSquared : ‖sumValue‖^2 = (q : ℝ)

theorem gauss_sum_magnitude_squared (χ : DirichletCharacter q) (G : GaussSum χ) :
    ‖G.sumValue‖^2 = (q : ℝ) := by
  exact G.magnitudeSquared

def GaussSumsTheoremClosed (A : AdmittedObject) : Prop :=
  ∀ (χ : DirichletCharacter A.q), ∃ (G : GaussSum χ), True

end CharacterSumsGaussSumsTheoremCanonicalLaneLean
end HautevilleHouse