import CoHomologyRingsAssociativeAlgebrasLemmaCanonicalLaneLean.MathlibObjects

namespace HautevilleHouse
namespace CoHomologyRingsAssociativeAlgebrasLemmaCanonicalLaneLean

structure AdmissibleClass where
  object : AdmittedTheoremObject
  endpointSatisfied : Prop
  remainderRecorded : Prop
  gateWitness : endpointSatisfied ∨ remainderRecorded

def admittedClosure (A : AdmissibleClass) : Prop :=
  NativeBridgeClosed A.object ∧ (A.endpointSatisfied ∨ A.remainderRecorded)

end CoHomologyRingsAssociativeAlgebrasLemmaCanonicalLaneLean
end HautevilleHouse