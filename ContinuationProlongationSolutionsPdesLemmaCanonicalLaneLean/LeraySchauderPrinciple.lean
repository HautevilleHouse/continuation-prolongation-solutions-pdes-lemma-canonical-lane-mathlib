import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ContinuationProlongationSolutionsPdesLemmaCanonicalLaneLean

structure LeraySchauderPrinciple where
  compactOperator : Type u → Type u
  topologicalDegree : ℤ
  existenceOfSolution : Prop
  continuationProperty : Prop
  aPrioriBound : Prop

structure LeraySchauderEvidence (L : LeraySchauderPrinciple) where
  existenceOfSolutionClosed : L.existenceOfSolution
  continuationPropertyClosed : L.continuationProperty
  aPrioriBoundClosed : L.aPrioriBound

def LeraySchauderClosed (L : LeraySchauderPrinciple) : Prop :=
  L.existenceOfSolution ∧ L.continuationProperty ∧ L.aPrioriBound

theorem leray_schauder_closed_from_evidence
    (L : LeraySchauderPrinciple) (E : LeraySchauderEvidence L) :
    LeraySchauderClosed L := by
  exact And.intro E.existenceOfSolutionClosed (And.intro E.continuationPropertyClosed E.aPrioriBoundClosed)

end ContinuationProlongationSolutionsPdesLemmaCanonicalLaneLean
end HautevilleHouse