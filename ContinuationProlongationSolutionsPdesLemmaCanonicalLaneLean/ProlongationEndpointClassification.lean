import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ContinuationProlongationSolutionsPdesLemmaCanonicalLaneLean

structure ProlongationEndpointPackage where
  initialInterval : Set ℝ
  maximalInterval : Set ℝ
  blowupCondition : Prop
  endpointReached : Prop
  continuationAcrossEndpoint : Prop

structure ProlongationEndpointEvidence (P : ProlongationEndpointPackage) where
  initialIntervalClosed : P.initialInterval = Set.Ioo 0 1
  blowupConditionClosed : P.blowupCondition
  endpointReachedClosed : P.endpointReached
  continuationAcrossEndpointClosed : P.continuationAcrossEndpoint

def ProlongationEndpointClosed (P : ProlongationEndpointPackage) : Prop :=
  P.initialInterval = Set.Ioo 0 1 ∧ P.blowupCondition ∧ P.endpointReached ∧ P.continuationAcrossEndpoint

theorem prolongation_endpoint_closed_from_evidence
    (P : ProlongationEndpointPackage) (E : ProlongationEndpointEvidence P) :
    ProlongationEndpointClosed P := by
  exact And.intro E.initialIntervalClosed (And.intro E.blowupConditionClosed
    (And.intro E.endpointReachedClosed E.continuationAcrossEndpointClosed))

end ContinuationProlongationSolutionsPdesLemmaCanonicalLaneLean
end HautevilleHouse