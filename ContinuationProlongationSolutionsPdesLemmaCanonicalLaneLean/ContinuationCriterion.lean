import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ContinuationProlongationSolutionsPdesLemmaCanonicalLaneLean

structure ContinuationCriterionPackage where
  blowUpCondition : Prop
  prolongationInequality : Prop
  endpointClassification : Prop
  aPrioriEstimate : Prop

structure ContinuationCriterionEvidence (C : ContinuationCriterionPackage) where
  blowUpConditionClosed : C.blowUpCondition
  prolongationInequalityClosed : C.prolongationInequality
  endpointClassificationClosed : C.endpointClassification
  aPrioriEstimateClosed : C.aPrioriEstimate

def ContinuationCriterionClosed (C : ContinuationCriterionPackage) : Prop :=
  C.blowUpCondition ∧ C.prolongationInequality ∧
  C.endpointClassification ∧ C.aPrioriEstimate

theorem continuation_criterion_closed_from_evidence
    (C : ContinuationCriterionPackage) (E : ContinuationCriterionEvidence C) :
    ContinuationCriterionClosed C := by
  exact And.intro E.blowUpConditionClosed
    (And.intro E.prolongationInequalityClosed
      (And.intro E.endpointClassificationClosed E.aPrioriEstimateClosed))

end ContinuationProlongationSolutionsPdesLemmaCanonicalLaneLean
end HautevilleHouse