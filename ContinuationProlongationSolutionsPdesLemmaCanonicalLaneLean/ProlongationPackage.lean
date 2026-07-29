import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ContinuationProlongationSolutionsPdesLemmaCanonicalLaneLean

structure ProlongationPackage where
  solutionFamily : Type
  prolongationMap : Type
  continuationCondition : Prop
  maximalExtension : Prop
  uniquenessOfExtension : Prop

structure ProlongationEvidence (P : ProlongationPackage) where
  continuationConditionClosed : P.continuationCondition
  maximalExtensionClosed : P.maximalExtension
  uniquenessOfExtensionClosed : P.uniquenessOfExtension

def ProlongationClosed (P : ProlongationPackage) : Prop :=
  P.continuationCondition ∧ P.maximalExtension ∧ P.uniquenessOfExtension

theorem prolongation_closed_from_evidence (P : ProlongationPackage)
    (E : ProlongationEvidence P) : ProlongationClosed P := by
  exact And.intro E.continuationConditionClosed
    (And.intro E.maximalExtensionClosed E.uniquenessOfExtensionClosed)

end ContinuationProlongationSolutionsPdesLemmaCanonicalLaneLean
end HautevilleHouse