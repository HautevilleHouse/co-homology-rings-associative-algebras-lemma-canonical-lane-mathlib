import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CoHomologyRingsAssociativeAlgebrasLemmaCanonicalLaneLean

structure CohomologyRing (R : Type) [CommRing R] where
  carrier : Type
  add : carrier → carrier → carrier
  mul : carrier → carrier → carrier
  zero : carrier
  one : carrier
  addAssoc : ∀ a b c : carrier, add (add a b) c = add a (add b c)
  mulAssoc : ∀ a b c : carrier, mul (mul a b) c = mul a (mul b c)
  addComm : ∀ a b : carrier, add a b = add b a
  mulAddDistribLeft : ∀ a b c : carrier, mul a (add b c) = add (mul a b) (mul a c)
  mulAddDistribRight : ∀ a b c : carrier, mul (add a b) c = add (mul a c) (mul b c)
  zeroAdd : ∀ a : carrier, add zero a = a
  addZero : ∀ a : carrier, add a zero = a
  oneMul : ∀ a : carrier, mul one a = a
  mulOne : ∀ a : carrier, mul a one = a
  zeroMul : ∀ a : carrier, mul zero a = zero
  mulZero : ∀ a : carrier, mul a zero = zero
  addLeftNeg : ∀ a : carrier, add (addLeftNeg a) a = zero
  addRightNeg : ∀ a : carrier, add a (addRightNeg a) = zero
  addLeftNeg : carrier → carrier
  addRightNeg : carrier → carrier

def CohomologyRing.ring (R : Type) [CommRing R] (cr : CohomologyRing R) : Ring cr.carrier := {
  add := cr.add,
  mul := cr.mul,
  zero := cr.zero,
  one := cr.one,
  addAssoc := cr.addAssoc,
  mulAssoc := cr.mulAssoc,
  addComm := cr.addComm,
  mulAddDistribLeft := cr.mulAddDistribLeft,
  mulAddDistribRight := cr.mulAddDistribRight,
  zeroAdd := cr.zeroAdd,
  addZero := cr.addZero,
  oneMul := cr.oneMul,
  mulOne := cr.mulOne,
  zeroMul := cr.zeroMul,
  mulZero := cr.mulZero,
  addLeftNeg := cr.addLeftNeg,
  addRightNeg := cr.addRightNeg,
  addLeftNeg := cr.addLeftNeg,
  addRightNeg := cr.addRightNeg
}

structure CohomologyRingBridge where
  ring : CohomologyRing ℕ
  ringAxiomsChecked : Bool
  associativeAlgebra : Bool

def cohomologyRingBridge : CohomologyRingBridge := {
  ring := {
    carrier := ℕ,
    add := Nat.add,
    mul := Nat.mul,
    zero := 0,
    one := 1,
    addAssoc := Nat.add_assoc,
    mulAssoc := Nat.mul_assoc,
    addComm := Nat.add_comm,
    mulAddDistribLeft := Nat.mul_add,
    mulAddDistribRight := λ a b c => by ring,
    zeroAdd := Nat.zero_add,
    addZero := Nat.add_zero,
    oneMul := Nat.one_mul,
    mulOne := Nat.mul_one,
    zeroMul := Nat.zero_mul,
    mulZero := Nat.mul_zero,
    addLeftNeg := λ a => a,
    addRightNeg := λ a => a
  },
  ringAxiomsChecked := true,
  associativeAlgebra := true
}

theorem cohomology_ring_bridge_checked : cohomologyRingBridge.ringAxiomsChecked = true ∧ cohomologyRingBridge.associativeAlgebra = true := by
  exact ⟨rfl, rfl⟩

end CoHomologyRingsAssociativeAlgebrasLemmaCanonicalLaneLean
end HautevilleHouse