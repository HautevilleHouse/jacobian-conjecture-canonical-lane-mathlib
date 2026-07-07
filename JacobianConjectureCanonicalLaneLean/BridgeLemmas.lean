import JacobianConjectureCanonicalLaneLean.Projection

namespace HautevilleHouse
namespace JacobianConjectureCanonicalLaneLean

def bridgeClosed (A : AdmissibleClass) : Prop :=
  ScopedClosure A.object

theorem bridge_from_admissible_class (A : AdmissibleClass) :
    bridgeClosed A := by
  exact ⟨A.object.sourceKeyChecked,
    A.object.theoremObjectChecked,
    A.object.schemeMorphismGateWitness,
    A.object.cohomologyBridgeWitness,
    A.object.sourceBoundaryLedgerWitness,
    A.object.classicalRemainderCarried⟩

end JacobianConjectureCanonicalLaneLean
end HautevilleHouse
