import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ContinuationProlongationSolutionsPdesLemmaCanonicalLaneLean

structure ContinuationProlongationPDE where
  solutionSpace : Type u
  pdeOperator : solutionSpace → solutionSpace
  initialCondition : solutionSpace
  maximalExistenceTime : ℝ
  localSolution : solutionSpace
  uniqueExtension : Prop

def ContinuationProlongationPDEClosed (P : ContinuationProlongationPDE) : Prop :=
  P.uniqueExtension

end ContinuationProlongationSolutionsPdesLemmaCanonicalLaneLean
end HautevilleHouse