import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.ContinuationProlongationSolutionsPdesLemmaCanonicalLaneLean.ContinuationProlongationPDE

namespace HautevilleHouse
namespace ContinuationProlongationSolutionsPdesLemmaCanonicalLaneLean

structure ProlongationLemma where
  pde : ContinuationProlongationPDE
  prolongationCondition : Prop
  prolongationBound : ℝ
  maximalSolution : pde.solutionSpace
  prolongationAchieved : Prop

def ProlongationLemmaClosed (L : ProlongationLemma) : Prop :=
  L.prolongationAchieved

end ContinuationProlongationSolutionsPdesLemmaCanonicalLaneLean
end HautevilleHouse