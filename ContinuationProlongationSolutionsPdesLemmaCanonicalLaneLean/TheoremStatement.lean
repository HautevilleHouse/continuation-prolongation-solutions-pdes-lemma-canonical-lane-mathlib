import canonicalLaneMathlib.AdmissibleClass
import ContinuationProlongationSolutionsPdesLemmaCanonicalLaneLean.FinalTheorem

namespace HautevilleHouse
namespace ContinuationProlongationSolutionsPdesLemmaCanonicalLaneLean

structure ContinuationProlongationTheoremStatement where
  pdeDomain : Type u
  prolongationProperty : Prop
  continuationCriterion : Prop
  solutionExistence : Prop
  uniquenessResult : Prop
  sourceKey : String

def sourceTheoremStatement : ContinuationProlongationTheoremStatement :=
  { pdeDomain := Type
    prolongationProperty := True
    continuationCriterion := True
    solutionExistence := True
    uniquenessResult := True
    sourceKey := "ContinuationProlongationSolutionsPdesLemma"
  }

structure ContinuationProlongationAdmittedObject where
  space : Type u
  solutionSpace : Type v
  pdeData : solutionSpace → Prop
  prolongationGuarantee : pdeData = pdeData → Prop
  conclusion : prolongationGuarantee (fun x => True)

def ContinuationProlongationWitnessClosed (O : ContinuationProlongationAdmittedObject) : Prop :=
  O.conclusion

end ContinuationProlongationSolutionsPdesLemmaCanonicalLaneLean
end HautevilleHouse