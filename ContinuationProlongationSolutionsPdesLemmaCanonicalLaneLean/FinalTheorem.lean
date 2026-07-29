import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ContinuationProlongationSolutionsPdesLemmaCanonicalLaneLean

def ConstrainedProlongationClosure (A : AdmissibleClass) : Prop :=
  bridgeClosed A ∧ gateClosed A

theorem constrained_prolongation_endgame (A : AdmissibleClass) :
    ConstrainedProlongationClosure A := by
  exact And.intro (bridge_from_admissible_class A) (gate_from_admissible_class A)

end ContinuationProlongationSolutionsPdesLemmaCanonicalLaneLean
end HautevilleHouse
