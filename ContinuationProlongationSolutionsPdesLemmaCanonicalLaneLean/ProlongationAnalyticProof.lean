import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ContinuationProlongationSolutionsPdesLemmaCanonicalLaneLean

structure ProlongationAnalyticCertificate (P : ContinuationProlongationPackage) where
  prolongationCriterionClosed : P.prolongationCriterion
  continuationConditionClosed : P.continuationCondition
  maximalExistenceIntervalClosed : P.maximalExistenceInterval

def ProlongationAnalyticCertificateClosed (P : ContinuationProlongationPackage)
    (C : ProlongationAnalyticCertificate P) : Prop :=
  C.prolongationCriterionClosed ∧ C.continuationConditionClosed ∧ C.maximalExistenceIntervalClosed

theorem prolongation_analytic_certificate_closed
    (P : ContinuationProlongationPackage) (C : ProlongationAnalyticCertificate P) :
    ProlongationAnalyticCertificateClosed P C := by
  exact And.intro C.prolongationCriterionClosed
    (And.intro C.continuationConditionClosed C.maximalExistenceIntervalClosed)

end ContinuationProlongationSolutionsPdesLemmaCanonicalLaneLean
end HautevilleHouse