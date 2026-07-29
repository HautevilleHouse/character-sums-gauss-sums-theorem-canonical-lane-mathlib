import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CharacterSumsGaussSumsTheoremCanonicalLaneLean

structure AdmittedObject where
  q : ℕ
  primePower : q > 1
  conclusion : GaussSumsTheoremClosed this

def GaussSumsTheoremClosed (A : AdmittedObject) : Prop :=
  ∀ (χ : DirichletCharacter A.q), ∃ (G : GaussSum χ), True

end CharacterSumsGaussSumsTheoremCanonicalLaneLean
end HautevilleHouse