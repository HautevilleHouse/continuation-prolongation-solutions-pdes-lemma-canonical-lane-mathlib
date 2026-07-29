import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.ContinuationProlongationSolutionsPdesLemmaCanonicalLaneLean.ProlongationLemma

namespace HautevilleHouse
namespace ContinuationProlongationSolutionsPdesLemmaCanonicalLaneLean

structure ContinuationPrinciple where
  prolongationLemmas : List ProlongationLemma
  continuationCondition : Prop
  universalSolution : Prop

def ContinuationPrincipleClosed (C : ContinuationPrinciple) : Prop :=
  C.continuationCondition ∧ C.universalSolution

end ContinuationProlongationSolutionsPdesLemmaCanonicalLaneLean
end HautevilleHouse