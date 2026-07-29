import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CharacterSumsGaussSumsTheoremCanonicalLaneLean

def ConstrainedGaussSumClosure (A : AdmissibleClass) : Prop :=
  bridgeClosed A ∧ gateClosed A

theorem constrained_gauss_sum_endgame (A : AdmissibleClass) :
    ConstrainedGaussSumClosure A := by
  exact And.intro (bridge_from_admissible_class A) (gate_from_admissible_class A)

end HautevilleHouse
end CharacterSumsGaussSumsTheoremCanonicalLaneLean
