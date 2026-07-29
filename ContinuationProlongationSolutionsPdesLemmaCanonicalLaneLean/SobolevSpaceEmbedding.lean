import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ContinuationProlongationSolutionsPdesLemmaCanonicalLaneLean

structure SobolevSpaceEmbeddingPackage (M : Type u) where
  sourceSpace : Type v
  targetSpace : Type w
  embeddingMap : sourceSpace → targetSpace
  continuity : Prop
  injectivity : Prop

structure SobolevSpaceEmbeddingEvidence (M : Type u) (S : SobolevSpaceEmbeddingPackage M) where
  continuityClosed : S.continuity
  injectivityClosed : S.injectivity

def SobolevSpaceEmbeddingClosed (M : Type u) (S : SobolevSpaceEmbeddingPackage M) : Prop :=
  S.continuity ∧ S.injectivity

theorem sobolev_space_embedding_closed_from_evidence
    (M : Type u) (S : SobolevSpaceEmbeddingPackage M) (E : SobolevSpaceEmbeddingEvidence M S) :
    SobolevSpaceEmbeddingClosed M S := by
  exact And.intro E.continuityClosed E.injectivityClosed

end ContinuationProlongationSolutionsPdesLemmaCanonicalLaneLean
end HautevilleHouse
