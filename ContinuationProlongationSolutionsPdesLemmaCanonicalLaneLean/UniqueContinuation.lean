import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ContinuationProlongationSolutionsPdesLemmaCanonicalLaneLean

structure UniqueContinuationPackage (M : Type u) where
  operator : Type v
  vanishingSet : Set M
  vanishingSetHasInterior : Prop
  solutionVanishesOnOpen : Prop
  solutionIsZero : Prop

structure UniqueContinuationEvidence (M : Type u) (U : UniqueContinuationPackage M) where
  vanishingSetHasInteriorClosed : U.vanishingSetHasInterior
  solutionVanishesOnOpenClosed : U.solutionVanishesOnOpen
  solutionIsZeroClosed : U.solutionIsZero

def UniqueContinuationClosed (M : Type u) (U : UniqueContinuationPackage M) : Prop :=
  U.vanishingSetHasInterior ∧ U.solutionVanishesOnOpen ∧ U.solutionIsZero

theorem unique_continuation_closed_from_evidence
    (M : Type u) (U : UniqueContinuationPackage M) (E : UniqueContinuationEvidence M U) :
    UniqueContinuationClosed M U := by
  exact And.intro E.vanishingSetHasInteriorClosed
    (And.intro E.solutionVanishesOnOpenClosed E.solutionIsZeroClosed)

end ContinuationProlongationSolutionsPdesLemmaCanonicalLaneLean
end HautevilleHouse
