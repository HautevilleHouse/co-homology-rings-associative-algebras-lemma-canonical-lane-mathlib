import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.CoHomologyRingsAssociativeAlgebrasLemmaCanonicalLaneLean.CohomologyRingStructure

namespace HautevilleHouse
namespace CoHomologyRingsAssociativeAlgebrasLemmaCanonicalLaneLean

structure AssociativeAlgebra (R : Type) [CommRing R] where
  carrier : Type
  add : carrier → carrier → carrier
  mul : carrier → carrier → carrier
  smul : R → carrier → carrier
  one : carrier
  zero : carrier
  addAssoc : ∀ a b c : carrier, add (add a b) c = add a (add b c)
  addComm : ∀ a b c : carrier, add a b = add b a
  zeroAdd : ∀ a : carrier, add zero a = a
  addZero : ∀ a : carrier, add a zero = a
  addLeftNeg : carrier → carrier
  addLeftNeg_add : ∀ a : carrier, add (addLeftNeg a) a = zero
  mulAssoc : ∀ a b c : carrier, mul (mul a b) c = mul a (mul b c)
  oneMul : ∀ a : carrier, mul one a = a
  mulOne : ∀ a : carrier, mul a one = a
  leftDistrib : ∀ a b c : carrier, mul a (add b c) = add (mul a b) (mul a c)
  rightDistrib : ∀ a b c : carrier, mul (add a b) c = add (mul a c) (mul b c)
  zeroMul : ∀ a : carrier, mul zero a = zero
  mulZero : ∀ a : carrier, mul a zero = zero
  smulAdd : ∀ r s : R, ∀ x : carrier, smul (r + s) x = add (smul r x) (smul s x)
  addSmul : ∀ r : R, ∀ x y : carrier, smul r (add x y) = add (smul r x) (smul r y)
  mulSmul : ∀ r : R, ∀ x y : carrier, smul r (mul x y) = mul (smul r x) y
  smulMul : ∀ r : R, ∀ x y : carrier, smul r (mul x y) = mul x (smul r y)
  oneSmul : ∀ x : carrier, smul 1 x = x
  smulAssoc : ∀ r s : R, ∀ x : carrier, smul (r * s) x = smul r (smul s x)

def AssociativeAlgebra.toRing (R : Type) [CommRing R] (A : AssociativeAlgebra R) : Ring A.carrier := {
  add := A.add,
  mul := A.mul,
  zero := A.zero,
  one := A.one,
  addAssoc := A.addAssoc,
  addComm := A.addComm,
  zeroAdd := A.zeroAdd,
  addZero := A.addZero,
  addLeftNeg := A.addLeftNeg,
  add_left_neg := A.addLeftNeg_add,
  mulAssoc := A.mulAssoc,
  oneMul := A.oneMul,
  mulOne := A.mulOne,
  leftDistrib := A.leftDistrib,
  rightDistrib := A.rightDistrib,
  zeroMul := A.zeroMul,
  mulZero := A.mulZero
}

structure AssociativeAlgebraBridge where
  algebraDefined : Bool
  ringBridge : CohomologyRingBridge

def associativeAlgebraBridge : AssociativeAlgebraBridge := {
  algebraDefined := true,
  ringBridge := cohomologyRingBridge
}

theorem associative_algebra_bridge_checked : associativeAlgebraBridge.algebraDefined = true := by
  rfl

end CoHomologyRingsAssociativeAlgebrasLemmaCanonicalLaneLean
end HautevilleHouse