import CoHomologyRingsAssociativeAlgebrasLemmaCanonicalLaneLean.AlgebraCertificate

namespace HautevilleHouse
namespace CoHomologyRingsAssociativeAlgebrasLemmaCanonicalLaneLean

def AdmittedClosure (A : AdmissibleClass) : Prop :=
  ConstrainedTheoremClosure A ∧ AlgebraSubstrateClosed

theorem admitted_closure_checked (A : AdmissibleClass) :
    AdmittedClosure A := by
  refine ⟨?_, ?_⟩
  · exact constrained_theorem_closure A
  · exact algebra_substrate_checked

theorem unrestricted_classical_boundary_carried :
    algebraCertificate.unrestrictedClassicalClosure = false := by
  rfl

end CoHomologyRingsAssociativeAlgebrasLemmaCanonicalLaneLean
end HautevilleHouse