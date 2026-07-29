import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ContinuationProlongationSolutionsPdesLemmaCanonicalLaneLean

structure PDEAnalyticFoundation where
  prolongation : ProlongationPackage
  prolongationEvidence : ProlongationEvidence prolongation
  criterion : ContinuationCriterionPackage
  criterionEvidence : ContinuationCriterionEvidence criterion

def PDEAnalyticFoundationClosed (A : PDEAnalyticFoundation) : Prop :=
  ProlongationClosed A.prolongation ∧ ContinuationCriterionClosed A.criterion

theorem pde_analytic_foundation_closed_from_evidence
    (A : PDEAnalyticFoundation) : PDEAnalyticFoundationClosed A := by
  exact And.intro (prolongation_closed_from_evidence A.prolongation A.prolongationEvidence)
    (continuation_criterion_closed_from_evidence A.criterion A.criterionEvidence)

end ContinuationProlongationSolutionsPdesLemmaCanonicalLaneLean
end HautevilleHouse