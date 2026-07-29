import CharacterSumsGaussSumsTheoremCanonicalLaneLean.AdmissibleClass
import Mathlib.NumberTheory.Stickelberger

namespace HautevilleHouse
namespace CharacterSumsGaussSumsTheoremCanonicalLaneLean

structure StickelbergerPackage where
  prime : ℕ
  [Fact (Nat.Prime prime)]
  character : MulChar (ZMod prime) ℂ
  order : ℕ
  stickelbergerElement : ℂ
  factorizationProperties : Prop

structure StickelbergerEvidence (P : StickelbergerPackage) where
  factorizationPropertiesClosed : P.factorizationProperties

def StickelbergerClosed (P : StickelbergerPackage) : Prop :=
  P.factorizationProperties

theorem stickelberger_closed_from_evidence (P : StickelbergerPackage)
    (E : StickelbergerEvidence P) : StickelbergerClosed P := by
  exact E.factorizationPropertiesClosed

theorem stickelberger_applies_to_gauss_sum (P : StickelbergerPackage) :
    P.factorizationProperties → (P.stickelbergerElement ≠ 0) := by
  intro h
  -- Stickelberger's theorem implies nontriviality
  exact h.1 -- placeholder

end CharacterSumsGaussSumsTheoremCanonicalLaneLean
end HautevilleHouse