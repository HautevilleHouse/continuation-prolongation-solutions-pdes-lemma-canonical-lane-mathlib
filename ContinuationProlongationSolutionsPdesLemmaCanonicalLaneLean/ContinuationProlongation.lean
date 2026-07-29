import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ContinuationProlongationSolutionsPdesLemmaCanonicalLaneLean

structure ContinuationProlongationSolution (M : Type u) where
  manifold : M
  initialData : Prop
  pdeSatisfied : Prop
  localExistence : Prop
  prolongationCriterion : Prop
  maximalSolution : Prop

structure ContinuationProlongationEvidence (S : ContinuationProlongationSolution M) where
  initialDataClosed : S.initialData
  pdeSatisfiedClosed : S.pdeSatisfied
  localExistenceClosed : S.localExistence
  prolongationCriterionClosed : S.prolongationCriterion
  maximalSolutionClosed : S.maximalSolution

def ContinuationProlongationClosed (S : ContinuationProlongationSolution M) : Prop :=
  S.initialData ∧ S.pdeSatisfied ∧ S.localExistence ∧ S.prolongationCriterion ∧ S.maximalSolution

theorem continuation_prolongation_closed_from_evidence
    (S : ContinuationProlongationSolution M) (E : ContinuationProlongationEvidence S) :
    ContinuationProlongationClosed S := by
  exact And.intro E.initialDataClosed
    (And.intro E.pdeSatisfiedClosed
      (And.intro E.localExistenceClosed
        (And.intro E.prolongationCriterionClosed E.maximalSolutionClosed)))

end ContinuationProlongationSolutionsPdesLemmaCanonicalLaneLean
end HautevilleHouse
