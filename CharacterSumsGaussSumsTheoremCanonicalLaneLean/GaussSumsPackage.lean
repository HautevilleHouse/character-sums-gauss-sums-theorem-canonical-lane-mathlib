import canonicalLaneMathlib.AdmissibleClass
import Mathlib.NumberTheory.GaussSum

namespace HautevilleHouse
namespace CharacterSumsGaussSumsTheoremCanonicalLaneLean

structure GaussSumsPackage where
  field : Type u
  additiveChar : Type v
  multiplicativeChar : Type w
  gaussSumValue : Type x
  fieldFinite : Prop
  charNonTrivial : Prop
  gaussSumDefined : Prop
  absoluteValueFormula : Prop

structure GaussSumsEvidence (G : GaussSumsPackage) where
  fieldFiniteClosed : G.fieldFinite
  charNonTrivialClosed : G.charNonTrivial
  gaussSumDefinedClosed : G.gaussSumDefined
  absoluteValueFormulaClosed : G.absoluteValueFormula

def GaussSumsClosed (G : GaussSumsPackage) : Prop :=
  G.fieldFinite ∧ G.charNonTrivial ∧ G.gaussSumDefined ∧ G.absoluteValueFormula

theorem gauss_sums_closed_from_evidence (G : GaussSumsPackage) (E : GaussSumsEvidence G) :
    GaussSumsClosed G := by
  exact And.intro E.fieldFiniteClosed (And.intro E.charNonTrivialClosed (And.intro E.gaussSumDefinedClosed E.absoluteValueFormulaClosed))

end CharacterSumsGaussSumsTheoremCanonicalLaneLean
end HautevilleHouse
