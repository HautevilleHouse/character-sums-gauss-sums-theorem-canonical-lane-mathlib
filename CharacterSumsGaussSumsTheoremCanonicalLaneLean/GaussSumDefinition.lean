import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CharacterSumsGaussSumsTheoremCanonicalLaneLean

structure GaussSumPackage where
  finiteField : Type u
  additiveCharacter : finiteField → ℂ
  multiplicativeCharacter : finiteField⁺ → ℂ
  gaussSumValue : ℂ
  modStructure : Prop
  absoluteValue : ℝ

structure GaussSumEvidence (G : GaussSumPackage) where
  finiteFieldDefined : G.modStructure
  charactersDefined : G.additiveCharacter 0 = 0 ∧ (∀ a : G.finiteField⁺, G.multiplicativeCharacter a ≠ 0)
  gaussSumFormula : G.gaussSumValue = ∑ a : G.finiteField⁺, G.multiplicativeCharacter a * G.additiveCharacter a
  absoluteValueBound : G.absoluteValue = Complex.abs G.gaussSumValue

def GaussSumClosed (G : GaussSumPackage) : Prop := G.modStructure ∧ (∃ gs : GaussSumEvidence G, True)

end HautevilleHouse
end CharacterSumsGaussSumsTheoremCanonicalLaneLean
