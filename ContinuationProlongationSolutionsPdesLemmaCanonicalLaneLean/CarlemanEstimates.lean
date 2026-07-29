import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ContinuationProlongationSolutionsPdesLemmaCanonicalLaneLean

structure CarlemanEstimatePackage (M : Type u) where
  operatorDomain : Type v
  weightFunction : M → ℝ
  estimateConstants : Prop
  inequalityHolds : Prop
  integrabilityCondition : Prop

structure CarlemanEstimateEvidence (M : Type u) (C : CarlemanEstimatePackage M) where
  estimateConstantsClosed : C.estimateConstants
  inequalityHoldsClosed : C.inequalityHolds
  integrabilityConditionClosed : C.integrabilityCondition

def CarlemanEstimateClosed (M : Type u) (C : CarlemanEstimatePackage M) : Prop :=
  C.estimateConstants ∧ C.inequalityHolds ∧ C.integrabilityCondition

theorem carleman_estimate_closed_from_evidence
    (M : Type u) (C : CarlemanEstimatePackage M) (E : CarlemanEstimateEvidence M C) :
    CarlemanEstimateClosed M C := by
  exact And.intro E.estimateConstantsClosed
    (And.intro E.inequalityHoldsClosed E.integrabilityConditionClosed)

end ContinuationProlongationSolutionsPdesLemmaCanonicalLaneLean
end HautevilleHouse
