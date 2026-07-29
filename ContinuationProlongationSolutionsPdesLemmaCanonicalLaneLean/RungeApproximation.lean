import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ContinuationProlongationSolutionsPdesLemmaCanonicalLaneLean

structure RungeApproximationPackage (M : Type u) where
  solutionSpace : Type v
  approximateSolutions : Set (M → ℝ)
  densityProperty : Prop
  approximationError : ℝ → Prop
  errorTendsToZero : Prop

structure RungeApproximationEvidence (M : Type u) (R : RungeApproximationPackage M) where
  densityPropertyClosed : R.densityProperty
  approximationErrorClosed : R.approximationError
  errorTendsToZeroClosed : R.errorTendsToZero

def RungeApproximationClosed (M : Type u) (R : RungeApproximationPackage M) : Prop :=
  R.densityProperty ∧ R.approximationError ∧ R.errorTendsToZero

theorem runge_approximation_closed_from_evidence
    (M : Type u) (R : RungeApproximationPackage M) (E : RungeApproximationEvidence M R) :
    RungeApproximationClosed M R := by
  exact And.intro E.densityPropertyClosed
    (And.intro E.approximationErrorClosed E.errorTendsToZeroClosed)

end ContinuationProlongationSolutionsPdesLemmaCanonicalLaneLean
end HautevilleHouse
