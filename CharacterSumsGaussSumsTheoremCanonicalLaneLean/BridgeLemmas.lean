import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CharacterSumsGaussSumsTheoremCanonicalLaneLean

def bridgeClosed (A : AdmissibleClass) : Prop :=
  bridgeFromAdmissible A.object

theorem bridge_from_admissible_class (A : AdmissibleClass) :
    bridgeClosed A := by
  exact A.object.bridgeProof

end CharacterSumsGaussSumsTheoremCanonicalLaneLean
end HautevilleHouse
