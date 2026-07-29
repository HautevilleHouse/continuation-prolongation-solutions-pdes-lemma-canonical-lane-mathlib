import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ContinuationProlongationSolutionsPdesLemmaCanonicalLaneLean

structure ContinuationProlongationStructure where
  spaceDomain : Type u
  banachSpace : Type v
  initialCondition : spaceDomain → Prop
  prolongationCondition : Prop
  maximalExistenceInterval : Prop
  continuationCriterion : Prop

structure ContinuationProlongationEvidence (C : ContinuationProlongationStructure) where
  initialConditionClosed : C.initialCondition = λ x => True
  prolongationConditionClosed : C.prolongationCondition
  maximalExistenceIntervalClosed : C.maximalExistenceInterval
  continuationCriterionClosed : C.continuationCriterion

def ContinuationProlongationClosed (C : ContinuationProlongationStructure) : Prop :=
  (∀ x, C.initialCondition x) ∧ C.prolongationCondition ∧ C.maximalExistenceInterval ∧ C.continuationCriterion

theorem continuation_prolongation_closed_from_evidence
    (C : ContinuationProlongationStructure) (E : ContinuationProlongationEvidence C) :
    ContinuationProlongationClosed C := by
  refine And.intro (λ x => E.initialConditionClosed x) (And.intro E.prolongationConditionClosed
    (And.intro E.maximalExistenceIntervalClosed E.continuationCriterionClosed))

end ContinuationProlongationSolutionsPdesLemmaCanonicalLaneLean
end HautevilleHouse