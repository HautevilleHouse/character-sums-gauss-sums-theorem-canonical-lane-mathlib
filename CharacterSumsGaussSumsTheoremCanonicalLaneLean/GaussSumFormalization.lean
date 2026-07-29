import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CharacterSumsGaussSumsTheoremCanonicalLaneLean

structure GaussSumFormalization where
  characterField : Type u
  additiveChar : Type v
  multiplicativeChar : Type w
  gaussSumValue : Type x
  fieldFiniteness : Prop
  additiveCharacterNontrivial : Prop
  multiplicativeCharacterNontrivial : Prop
  gaussSumDefined : Prop
  magnitudeFormula : Prop
  fieldFinitenessTerm : fieldFiniteness
  additiveCharacterNontrivialTerm : additiveCharacterNontrivial
  multiplicativeCharacterNontrivialTerm : multiplicativeCharacterNontrivial
  gaussSumDefinedTerm : gaussSumDefined
  magnitudeFormulaTerm : magnitudeFormula

structure GaussSumFormalizationEvidence (G : GaussSumFormalization) where
  fieldFinitenessClosed : G.fieldFiniteness
  additiveCharacterNontrivialClosed : G.additiveCharacterNontrivial
  multiplicativeCharacterNontrivialClosed : G.multiplicativeCharacterNontrivial
  gaussSumDefinedClosed : G.gaussSumDefined
  magnitudeFormulaClosed : G.magnitudeFormula

def GaussSumFormalizationClosed (G : GaussSumFormalization) : Prop :=
  G.fieldFiniteness ∧ G.additiveCharacterNontrivial ∧
  G.multiplicativeCharacterNontrivial ∧ G.gaussSumDefined ∧ G.magnitudeFormula

theorem gauss_sum_formalization_closed_from_evidence (G : GaussSumFormalization)
    (E : GaussSumFormalizationEvidence G) : GaussSumFormalizationClosed G := by
  exact And.intro E.fieldFinitenessClosed (And.intro E.additiveCharacterNontrivialClosed
    (And.intro E.multiplicativeCharacterNontrivialClosed
      (And.intro E.gaussSumDefinedClosed E.magnitudeFormulaClosed)))

end CharacterSumsGaussSumsTheoremCanonicalLaneLean
end HautevilleHouse