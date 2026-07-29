import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CharacterSumsGaussSumsTheoremCanonicalLaneLean

structure CharacterSumsGaussSumsAdmittedObject where
  charSumsModel : Type
  gaussSumsModel : Type
  conclusion : Prop

def CharacterSumsGaussSumsWitnessClosed (O : CharacterSumsGaussSumsAdmittedObject) : Prop :=
  O.conclusion

end CharacterSumsGaussSumsTheoremCanonicalLaneLean
end HautevilleHouse