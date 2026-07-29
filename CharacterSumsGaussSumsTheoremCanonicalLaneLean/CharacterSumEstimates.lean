import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CharacterSumsGaussSumsTheoremCanonicalLaneLean

structure CharacterSumEstimatePackage where
  characterSum : ℂ
  modulus : ℕ
  errorBound : ℝ
  boundAttained : Prop

structure CharacterSumEstimateEvidence (C : CharacterSumEstimatePackage) where
  boundAttainedClosed : C.boundAttained
  errorBoundPositive : C.errorBound > 0

def CharacterSumEstimateClosed (C : CharacterSumEstimatePackage) : Prop := C.boundAttained ∧ C.errorBound > 0

end HautevilleHouse
end CharacterSumsGaussSumsTheoremCanonicalLaneLean
