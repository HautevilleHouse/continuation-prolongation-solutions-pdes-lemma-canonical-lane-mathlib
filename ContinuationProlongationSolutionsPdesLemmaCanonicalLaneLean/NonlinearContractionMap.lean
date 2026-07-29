import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ContinuationProlongationSolutionsPdesLemmaCanonicalLaneLean

structure NonlinearContractionMap where
  mapping : Type u → Type u
  fixedPointExistence : Prop
  uniqueness : Prop
  parameterContinuity : Prop
  contractionConstant : ℝ

structure NonlinearContractionEvidence (F : NonlinearContractionMap) where
  fixedPointExistenceClosed : F.fixedPointExistence
  uniquenessClosed : F.uniqueness
  parameterContinuityClosed : F.parameterContinuity
  contractionConstantPositive : F.contractionConstant > 0

def NonlinearContractionClosed (F : NonlinearContractionMap) : Prop :=
  F.fixedPointExistence ∧ F.uniqueness ∧ F.parameterContinuity ∧ F.contractionConstant > 0

theorem nonlinear_contraction_closed_from_evidence
    (F : NonlinearContractionMap) (E : NonlinearContractionEvidence F) :
    NonlinearContractionClosed F := by
  exact And.intro E.fixedPointExistenceClosed (And.intro E.uniquenessClosed
    (And.intro E.parameterContinuityClosed E.contractionConstantPositive))

end ContinuationProlongationSolutionsPdesLemmaCanonicalLaneLean
end HautevilleHouse