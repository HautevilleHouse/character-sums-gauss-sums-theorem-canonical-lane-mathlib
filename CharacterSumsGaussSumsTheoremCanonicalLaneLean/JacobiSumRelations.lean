import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CharacterSumsGaussSumsTheoremCanonicalLaneLean

structure JacobiSumRelations where
  multiplicativeCharacters : Type u
  jacobiSumValue : Type v
  gaussSumProductFormula : Prop
  jacobiSumDefined : Prop
  relationToGaussSum : Prop
  gaussSumProductFormulaTerm : gaussSumProductFormula
  jacobiSumDefinedTerm : jacobiSumDefined
  relationToGaussSumTerm : relationToGaussSum

structure JacobiSumRelationsEvidence (J : JacobiSumRelations) where
  gaussSumProductFormulaClosed : J.gaussSumProductFormula
  jacobiSumDefinedClosed : J.jacobiSumDefined
  relationToGaussSumClosed : J.relationToGaussSum

def JacobiSumRelationsClosed (J : JacobiSumRelations) : Prop :=
  J.gaussSumProductFormula ∧ J.jacobiSumDefined ∧ J.relationToGaussSum

theorem jacobi_sum_relations_closed_from_evidence (J : JacobiSumRelations)
    (Ev : JacobiSumRelationsEvidence J) : JacobiSumRelationsClosed J := by
  exact And.intro Ev.gaussSumProductFormulaClosed
    (And.intro Ev.jacobiSumDefinedClosed Ev.relationToGaussSumClosed)

end CharacterSumsGaussSumsTheoremCanonicalLaneLean
end HautevilleHouse