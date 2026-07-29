import CoHomologyRingsAssociativeAlgebrasLemma.CoHomologyRingsAssociativeAlgebrasLemma
import Mathlib.AlgebraicTopology.CohomologyRing

noncomputable section

universe u

namespace HautevilleHouse
namespace CoHomologyRingsAssociativeAlgebrasLemma

open AlgebraicTopology

structure NativeCupProduct (X : Type u) [TopologicalSpace X] where
  degreeP : ℕ
  degreeQ : ℕ
  product : (CohomologyClass X (degreeP : ℕ)) → (CohomologyClass X (degreeQ : ℕ)) → (CohomologyClass X (degreeP + degreeQ : ℕ))

structure CupProductAssociativityStructure where
  degreeA : ℕ
  degreeB : ℕ
  degreeC : ℕ
  associativityWitness : String
deriving Repr, DecidableEq

end CoHomologyRingsAssociativeAlgebrasLemma
end HautevilleHouse
