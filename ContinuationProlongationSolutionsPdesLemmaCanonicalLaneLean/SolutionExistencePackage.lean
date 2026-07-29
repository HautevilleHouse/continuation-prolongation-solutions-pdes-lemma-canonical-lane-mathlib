import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ContinuationProlongationSolutionsPdesLemmaCanonicalLaneLean

structure SolutionExistencePackage where
  initialData : Type u
  existenceInterval : Prop
  uniqueness : Prop
  smoothDependence : Prop
  existenceIntervalClosed : existenceInterval
  uniquenessClosed : uniqueness
  smoothDependenceClosed : smoothDependence

structure SolutionExistenceEvidence (S : SolutionExistencePackage) where
  existenceIntervalClosed : S.existenceInterval
  uniquenessClosed : S.uniqueness
  smoothDependenceClosed : S.smoothDependence

def SolutionExistenceClosed (S : SolutionExistencePackage) : Prop :=
  S.existenceInterval ∧ S.uniqueness ∧ S.smoothDependence

theorem solution_existence_closed_from_evidence
    (S : SolutionExistencePackage) (E : SolutionExistenceEvidence S) :
    SolutionExistenceClosed S := by
  exact And.intro E.existenceIntervalClosed
    (And.intro E.uniquenessClosed E.smoothDependenceClosed)

end ContinuationProlongationSolutionsPdesLemmaCanonicalLaneLean
end HautevilleHouse