import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ContinuationProlongationSolutionsPdesLemmaCanonicalLaneLean

structure DomainAdmittedObject where
  domain : Type u
  domainTopology : TopologicalSpace domain
  smoothStructure : Prop
  boundaryRegularity : Prop
  solutionSpace : Type v
  solutionRegularity : Prop
  conclusion : solutionRegularity

structure DomainAdmissibleClass where
  object : DomainAdmittedObject
  endpointSatisfied : Prop
  remainderRecorded : Prop
  gateWitness : endpointSatisfied ∨ remainderRecorded

def domainAdmittedClosure (A : DomainAdmissibleClass) : Prop :=
  (bridgeClosed A) ∧ (A.endpointSatisfied ∨ A.remainderRecorded)

end ContinuationProlongationSolutionsPdesLemmaCanonicalLaneLean
end HautevilleHouse
