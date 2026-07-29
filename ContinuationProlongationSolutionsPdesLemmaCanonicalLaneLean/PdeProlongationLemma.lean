import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ContinuationProlongationSolutionsPdesLemmaCanonicalLaneLean

structure PdeProlongationLemma (M : Type u) where
  solutionSpace : Type v
  existenceInterval : Type w
  continuationCondition : Prop
  endpointEstimate : Prop
  remainingBound : Prop

structure PdeProlongationEvidence (L : PdeProlongationLemma M) where
  continuationConditionClosed : L.continuationCondition
  endpointEstimateClosed : L.endpointEstimate
  remainingBoundClosed : L.remainingBound

def PdeProlongationClosed (L : PdeProlongationLemma M) : Prop :=
  L.continuationCondition ∧ L.endpointEstimate ∧ L.remainingBound

theorem pde_prolongation_closed_from_evidence
    (L : PdeProlongationLemma M) (E : PdeProlongationEvidence L) :
    PdeProlongationClosed L := by
  exact And.intro E.continuationConditionClosed
    (And.intro E.endpointEstimateClosed E.remainingBoundClosed)

end ContinuationProlongationSolutionsPdesLemmaCanonicalLaneLean
end HautevilleHouse
