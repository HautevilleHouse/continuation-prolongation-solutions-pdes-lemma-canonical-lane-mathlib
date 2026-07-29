import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ContinuationProlongationSolutionsPdesLemmaCanonicalLaneLean

structure LipschitzFlowEmbedding where
  flowMap : Type u → Type v
  lipschitzConstant : ℝ
  embeddingClosed : Prop
  timeDependentBound : Prop
  solutionContinuationCompatibility : Prop

structure LipschitzFlowEmbeddingEvidence (L : LipschitzFlowEmbedding) where
  embeddingClosed : L.embeddingClosed
  timeDependentBoundClosed : L.timeDependentBound
  solutionContinuationCompatibilityClosed : L.solutionContinuationCompatibility
  lipschitzConstantPositive : L.lipschitzConstant > 0

def LipschitzFlowEmbeddingClosed (L : LipschitzFlowEmbedding) : Prop :=
  L.embeddingClosed ∧ L.timeDependentBound ∧ L.solutionContinuationCompatibility ∧ L.lipschitzConstant > 0

theorem lipschitz_flow_embedding_closed_from_evidence
    (L : LipschitzFlowEmbedding) (E : LipschitzFlowEmbeddingEvidence L) :
    LipschitzFlowEmbeddingClosed L := by
  exact And.intro E.embeddingClosed (And.intro E.timeDependentBoundClosed
    (And.intro E.solutionContinuationCompatibilityClosed E.lipschitzConstantPositive))

end ContinuationProlongationSolutionsPdesLemmaCanonicalLaneLean
end HautevilleHouse