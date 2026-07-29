import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.CharacterSumsGaussSumsTheoremCanonicalLaneLean.MultiplicativeCharacters

namespace HautevilleHouse
namespace CharacterSumsGaussSumsTheoremCanonicalLaneLean

open MultiplicativeCharacters

structure JacobiSum (G : Type) [AddCommGroup G] (χ ψ : Character G) where
  sumValue : ℂ
  relationWithGaussSum : Prop

structure JacobiSumPackage (G : Type) [AddCommGroup G] (P : CharacterPackage G) where
  jacobiSums : (χ ψ : Character G) → JacobiSum G χ ψ
  jacobiRelation : Prop

structure JacobiSumEvidence {G : Type} [AddCommGroup G] {P : CharacterPackage G} (J : JacobiSumPackage G P) where
  jacobiRelationClosed : J.jacobiRelation

def JacobiSumClosed {G : Type} [AddCommGroup G] {P : CharacterPackage G} (J : JacobiSumPackage G P) : Prop :=
  J.jacobiRelation

theorem jacobi_sum_closed_from_evidence {G : Type} [AddCommGroup G] {P : CharacterPackage G} (J : JacobiSumPackage G P) (E : JacobiSumEvidence J) :
    JacobiSumClosed J := by
  exact E.jacobiRelationClosed

end CharacterSumsGaussSumsTheoremCanonicalLaneLean
end HautevilleHouse