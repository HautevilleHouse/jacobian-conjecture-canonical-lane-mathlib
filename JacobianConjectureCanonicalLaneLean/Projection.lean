import JacobianConjectureCanonicalLaneLean.AdmissibleClass

namespace HautevilleHouse
namespace JacobianConjectureCanonicalLaneLean

open HautevilleHouse.CanonicalLaneMathlibCore

def theoremProjection : Projection EndgameState := {
  toFun := fun x => x,
  idempotent := by intro x; rfl
}

theorem theorem_projection_idempotent (x : EndgameState) :
    theoremProjection.toFun (theoremProjection.toFun x) = theoremProjection.toFun x := by
  exact theoremProjection.idempotent x

end JacobianConjectureCanonicalLaneLean
end HautevilleHouse
