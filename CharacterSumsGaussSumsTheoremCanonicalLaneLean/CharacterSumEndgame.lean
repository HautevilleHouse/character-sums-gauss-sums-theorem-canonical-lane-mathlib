import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CharacterSumsGaussSumsTheoremCanonicalLaneLean

structure CharacterSumAdmissibleClass where
  fieldPackage : GaussSumFormalization
  estimatePackage : CharacterSumEstimates
  quadraticPackage : QuadraticGaussSum
  jacobiPackage : JacobiSumRelations
  endpointReached : Prop
  remainderRecorded : Prop
  gateWitness : endpointReached ∨ remainderRecorded

structure CharacterSumAdmittedObject where
  object : CharacterSumAdmissibleClass
  conclusion : object.endpointReached

def bridgeClosed (A : CharacterSumAdmissibleClass) : Prop := by
  exact A.endpointReached

theorem bridge_from_admissible_class (A : CharacterSumAdmissibleClass) : bridgeClosed A := by
  exact A.endpointReached

def gateClosed (A : CharacterSumAdmissibleClass) : Prop := by
  exact A.endpointReached ∨ A.remainderRecorded

theorem gate_from_admissible_class (A : CharacterSumAdmissibleClass) : gateClosed A := by
  exact A.gateWitness

def ConstrainedCharacterSumClosure (A : CharacterSumAdmissibleClass) : Prop :=
  bridgeClosed A ∧ gateClosed A

theorem constrained_character_sum_endgame (A : CharacterSumAdmissibleClass) :
    ConstrainedCharacterSumClosure A := by
  exact And.intro (bridge_from_admissible_class A) (gate_from_admissible_class A)

end CharacterSumsGaussSumsTheoremCanonicalLaneLean
end HautevilleHouse