import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ContinuationProlongationSolutionsPdesLemmaCanonicalLaneLean

structure ContinuationProlongationPackage where
  solutionSpace : Type u
  prolongationCriterion : Prop
  continuationCondition : Prop
  maximalExistenceInterval : Prop
  prolongationCriterionClosed : prolongationCriterion
  continuationConditionClosed : continuationCondition
  maximalExistenceIntervalClosed : maximalExistenceInterval

structure ContinuationProlongationEvidence (P : ContinuationProlongationPackage) where
  prolongationCriterionClosed : P.prolongationCriterion
  continuationConditionClosed : P.continuationCondition
  maximalExistenceIntervalClosed : P.maximalExistenceInterval

def ContinuationProlongationClosed (P : ContinuationProlongationPackage) : Prop :=
  P.prolongationCriterion ∧ P.continuationCondition ∧ P.maximalExistenceInterval

theorem continuation_prolongation_closed_from_evidence
    (P : ContinuationProlongationPackage) (E : ContinuationProlongationEvidence P) :
    ContinuationProlongationClosed P := by
  exact And.intro E.prolongationCriterionClosed
    (And.intro E.continuationConditionClosed E.maximalExistenceIntervalClosed)

end ContinuationProlongationSolutionsPdesLemmaCanonicalLaneLean
end HautevilleHouse