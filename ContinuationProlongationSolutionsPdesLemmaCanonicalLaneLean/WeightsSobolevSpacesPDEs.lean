import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ContinuationProlongationSolutionsPdesLemmaCanonicalLaneLean

structure WeightsSobolevSpacesPackage where
  sobolevSpace : Type u
  weightFunction : Type v
  embeddingTheorem : Prop
  compactEmbedding : Prop
  regularityPreserving : Prop

structure WeightsSobolevSpacesEvidence (W : WeightsSobolevSpacesPackage) where
  embeddingTheoremClosed : W.embeddingTheorem
  compactEmbeddingClosed : W.compactEmbedding
  regularityPreservingClosed : W.regularityPreserving

def WeightsSobolevSpacesClosed (W : WeightsSobolevSpacesPackage) : Prop :=
  W.embeddingTheorem ∧ W.compactEmbedding ∧ W.regularityPreserving

theorem weights_sobolev_spaces_closed_from_evidence
    (W : WeightsSobolevSpacesPackage) (E : WeightsSobolevSpacesEvidence W) :
    WeightsSobolevSpacesClosed W := by
  exact And.intro E.embeddingTheoremClosed (And.intro E.compactEmbeddingClosed E.regularityPreservingClosed)

end ContinuationProlongationSolutionsPdesLemmaCanonicalLaneLean
end HautevilleHouse