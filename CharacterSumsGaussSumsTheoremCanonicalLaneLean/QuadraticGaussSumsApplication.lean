import canonicalLaneMathlib.AdmissibleClass
import Mathlib.NumberTheory.GaussSum

namespace HautevilleHouse
namespace CharacterSumsGaussSumsTheoremCanonicalLaneLean

structure QuadraticGaussSumsApplication where
  primeField : Type u
  quadraticChar : Type v
  gaussSum : Type w
  primeFieldFinite : Prop
  quadraticCharDefined : Prop
  explicitFormula : Prop
  signComputed : Prop

structure QuadraticGaussSumsEvidence (Q : QuadraticGaussSumsApplication) where
  primeFieldFiniteClosed : Q.primeFieldFinite
  quadraticCharDefinedClosed : Q.quadraticCharDefined
  explicitFormulaClosed : Q.explicitFormula
  signComputedClosed : Q.signComputed

def QuadraticGaussSumsClosed (Q : QuadraticGaussSumsApplication) : Prop :=
  Q.primeFieldFinite ∧ Q.quadraticCharDefined ∧ Q.explicitFormula ∧ Q.signComputed

theorem quadratic_gauss_sums_closed_from_evidence (Q : QuadraticGaussSumsApplication) (E : QuadraticGaussSumsEvidence Q) :
    QuadraticGaussSumsClosed Q := by
  exact And.intro E.primeFieldFiniteClosed (And.intro E.quadraticCharDefinedClosed (And.intro E.explicitFormulaClosed E.signComputedClosed))

end CharacterSumsGaussSumsTheoremCanonicalLaneLean
end HautevilleHouse
