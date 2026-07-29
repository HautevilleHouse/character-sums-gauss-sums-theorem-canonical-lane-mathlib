import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CharacterSumsGaussSumsTheoremCanonicalLaneLean

structure CharacterSum (χ : DirichletCharacter q) (S : Finset ℤ) where
  character : DirichletCharacter q
  sum : ℂ
  definition : sum = ∑ s in S, character.multiplicative s

theorem trivial_character_sum (χ : DirichletCharacter q) (h : ∀ n, χ.multiplicative n = 1) :
    CharacterSum χ Finset.univ := by
  refine { character := χ, sum := (Finset.card (Finset.univ : Finset ℤ)).toNat, definition := ?_ }
  simp [h, Finset.sum_const_nsmul, smul_eq_mul]

end CharacterSumsGaussSumsTheoremCanonicalLaneLean
end HautevilleHouse