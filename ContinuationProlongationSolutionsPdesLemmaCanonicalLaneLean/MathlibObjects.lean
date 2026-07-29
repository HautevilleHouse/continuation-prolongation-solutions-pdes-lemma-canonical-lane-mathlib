import canonicalLaneMathlib.AdmissibleClass
import Mathlib.Topology.Basic

namespace HautevilleHouse
namespace ContinuationProlongationSolutionsPdesLemmaCanonicalLaneLean

structure ContinuationProjProlongationSolution where
  domain : Type
  topology : TopologicalSpace domain
  pdeFamily : Type
  prolongationMap : pdeFamily → Type
  closedUnderContinuation : Prop
  solutionExtensionExists : Prop
  conclusion : solutionExtensionExists

structure ContinuationProlongationObject where
  solution : ContinuationProjProlongationSolution
  initialData : Prop
  maximalExtension : Prop
  continuationCriterion : Prop
  conclusion : continuationCriterion

def ContinuationProlongationWitnessClosed (O : ContinuationProlongationObject) : Prop :=
  O.conclusion

end ContinuationProlongationSolutionsPdesLemmaCanonicalLaneLean
end HautevilleHouse