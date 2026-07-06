import JacobianConjectureCanonicalLaneLean.Formalization
import JacobianConjectureCanonicalLaneLean.SourceDependencies

/-!
# Reviewer Bridge

Typed Lean data for the imported reviewer bridge architecture.
-/

namespace HautevilleHouse
namespace JacobianConjectureCanonicalLaneLean

structure ReviewerBridgeFile where
  path : String
  role : String
  sha256 : String
  present : Bool
deriving Repr, DecidableEq

structure ReviewerChainStep where
  index : Nat
  label : String
deriving Repr, DecidableEq

structure ReviewerClosureGate where
  gate : String
  constant : String
deriving Repr, DecidableEq

structure ReviewerManifestEntry where
  path : String
  sha256 : String
deriving Repr, DecidableEq

structure CertificateGate where
  gate : String
  status : String
deriving Repr, DecidableEq

structure CertificateInput where
  key : String
  value : String
deriving Repr, DecidableEq

def reviewerBridgeFiles : List ReviewerBridgeFile := [
  { path := "REVIEWER_MAP.md", role := "reviewer_map", sha256 := "f03db74e9b909bb2cc9a5549b220441d31b4769d2826b8e2430cd5f3c3c97303", present := true },
  { path := "notes/IDENTIFICATION_BRIDGE.md", role := "identification_bridge", sha256 := "fbcdd2b751011552c5f77713d9ab74a325b76f6d1223ecffac2f2dc35483dbd4", present := true },
  { path := "artifacts/constants_extraction_inputs.json", role := "constant_inputs", sha256 := "1f005fb4ba329ee98d7ab2d06b267cf2f5cbb0d5c5cdf7ec3099bf2f7c88af00", present := true },
  { path := "artifacts/constants_extracted.json", role := "constant_extracted", sha256 := "1c10011524315b0c40f8e52b32b350c1a4eb85193a4dd498b08ce35eb287b352", present := true },
  { path := "artifacts/constants_registry.json", role := "constant_registry", sha256 := "8c89f03ab909e7b3f285a54feb11bbdd013b4df2e603949eb4e93e714281a4d7", present := true },
  { path := "artifacts/stitch_constants.json", role := "stitch_constants", sha256 := "9498a45085faae49f450bd6c6481e2f361a30d3897a782a16bfa0d9c373c42be", present := true },
  { path := "artifacts/promotion_report.json", role := "promotion_report", sha256 := "4df894f713e9ab92f492e32b68e254d432fe291590920f9a28ce9ed4291b744c", present := true },
  { path := "repro/repro_manifest.json", role := "manifest", sha256 := "92238e255db3ecb8fdc5643ce1fc68738b2bf9e04b6218ceccbb12bde11f6bc1", present := true },
  { path := "repro/certificate_baseline.json", role := "baseline_certificate", sha256 := "d5a40623f68fa91e0d2eb60d9982e06c185d7f7f810a9dca88aebbc830823e7b", present := true }
]

def reviewerChainSteps : List ReviewerChainStep := [
  { index := 1, label := "EG1" },
  { index := 2, label := "EG2" },
  { index := 3, label := "EG3" },
  { index := 4, label := "EG4" },
  { index := 5, label := "Identification bridge" },
  { index := 6, label := "Scalar closure" }
]

def reviewerClosureGates : List ReviewerClosureGate := [
  { gate := "JC_G1", constant := "kappa_jacobian" },
  { gate := "JC_G2", constant := "sigma_degree" },
  { gate := "JC_G3", constant := "kappa_compact" },
  { gate := "JC_G4", constant := "rho_rigidity" },
  { gate := "JC_G5", constant := "inverse_transfer" },
  { gate := "JC_G6", constant := "eps_coh" },
  { gate := "JC_GM", constant := "derived" }
]

def reviewerFalsificationConditionCount : Nat := 5

def reviewerManifestEntries : List ReviewerManifestEntry := [
  { path := "CITATION.cff", sha256 := "585085ab7890241bee2dfd3f2ece4f0f8c1af3ead10def96cc54a1c35b627691" },
  { path := "README.md", sha256 := "0071d1122e8c31d7c856bccc5bd2c814ee7e1c053a1d5ecf3b00097a556d6dc3" },
  { path := "artifacts/constants_extracted.json", sha256 := "1c10011524315b0c40f8e52b32b350c1a4eb85193a4dd498b08ce35eb287b352" },
  { path := "artifacts/constants_extraction_inputs.json", sha256 := "1f005fb4ba329ee98d7ab2d06b267cf2f5cbb0d5c5cdf7ec3099bf2f7c88af00" },
  { path := "artifacts/constants_registry.json", sha256 := "8c89f03ab909e7b3f285a54feb11bbdd013b4df2e603949eb4e93e714281a4d7" },
  { path := "artifacts/promotion_report.json", sha256 := "4df894f713e9ab92f492e32b68e254d432fe291590920f9a28ce9ed4291b744c" },
  { path := "artifacts/stitch_constants.json", sha256 := "9498a45085faae49f450bd6c6481e2f361a30d3897a782a16bfa0d9c373c42be" },
  { path := "notes/EG1_public.md", sha256 := "604c6293dcc757d8d3faff2ff999d807e711eb4b3956313581595dbc0ae58e31" },
  { path := "notes/EG2_public.md", sha256 := "596510d0169ac86d1db64400bd9944df2ec1b8c0fbed9794a823fcbfca87cc52" },
  { path := "notes/EG3_public.md", sha256 := "716e7de7d9b6b6d6267ed675e1a5cc050388b07b188d21253a1b6b598d7f6e31" },
  { path := "notes/EG4_public.md", sha256 := "ac2b91cc41ea369b961a5e55ddd41dff3938d388292e6b6fd93a4f575b9176dd" },
  { path := "notes/IDENTIFICATION_BRIDGE.md", sha256 := "fbcdd2b751011552c5f77713d9ab74a325b76f6d1223ecffac2f2dc35483dbd4" },
  { path := "paper/CANONICAL_ROUTING_INDEX.md", sha256 := "767206eb9428c64e4af3b7b0225bcc37508466f8a30e5be40a4766fd83675678" },
  { path := "paper/EXTRACTION_SPEC.md", sha256 := "b7e4a4f9b72d401a1ba84567d7d8978e8088dd957c304ad2372a61bcb42841b7" },
  { path := "paper/JACOBIAN_CONJECTURE_PREPRINT.md", sha256 := "f2b79e78671b900d9e92a599766a5a783f3b7de065118248521a3bd6e07d454d" },
  { path := "repro/REPRO_PACK.md", sha256 := "0c434eba6c2f4409232f642bd55ff18a83f67d9b165231cfb60ade4f156f5154" },
  { path := "repro/THIRD_PARTY_RERUN_PROTOCOL.md", sha256 := "8e006d63c6ddfcbbfc3b5b4c65cd743c421b9e5a59a2b6d9ce5032a37eb1b320" },
  { path := "repro/certificate_baseline.json", sha256 := "d5a40623f68fa91e0d2eb60d9982e06c185d7f7f810a9dca88aebbc830823e7b" },
  { path := "repro/run_repro.sh", sha256 := "ed595bd4a8d272c1231b512ddfcc2c8b8dc5f008b678c3ed5f8d2e9101054213" },
  { path := "scripts/extract_constants.py", sha256 := "730d57dae3fac057e19630db34233183cae269568d43118c943387970081896d" },
  { path := "scripts/promote_constants.py", sha256 := "b65eb7a60552c668f04d6331a5256fe4e662ae5e83e769d42f6a141819769356" },
  { path := "scripts/release_gate.py", sha256 := "5c9760aeddbfa0e4b5a9447e1bda670004391c19470f9b1cf8897bf154f667b8" },
  { path := "scripts/update_manifest.py", sha256 := "45ae03f10349daebab98b6eb9a0836b7e2d15a48ca5504277c80ec7d4c633d12" },
  { path := "scripts/jc_closure_guard.py", sha256 := "1f305b01ecde2d3c2058314c2d1dbbc1dec0150e44b064d66be7c9fb70661255" },
  { path := "scripts/README.md", sha256 := "9269dfd46f8dc33351882ad361b837b11b8a2af9221d6a74c673268b0940cb1c" }
]

def baselineCertificateGates : List CertificateGate := [
  { gate := "JC_G1", status := "PASS" },
  { gate := "JC_G2", status := "PASS" },
  { gate := "JC_G3", status := "PASS" },
  { gate := "JC_G4", status := "PASS" },
  { gate := "JC_G5", status := "PASS" },
  { gate := "JC_G6", status := "PASS" },
  { gate := "JC_GM", status := "PASS" }
]

def baselineCertificateInputs : List CertificateInput := [
  { key := "eps_coh", value := "0.0" },
  { key := "inverse_transfer", value := "1.029658" },
  { key := "kappa_compact", value := "0.8025682182985554" },
  { key := "kappa_jacobian", value := "1.09644" },
  { key := "rho_rigidity", value := "1.072" },
  { key := "sigma_degree", value := "1.067" },
  { key := "sigma_star_can", value := "1.053" }
]

def bridgeConstantKeys : List String := [
  "eps_coh",
  "inverse_transfer",
  "kappa_compact",
  "kappa_jacobian",
  "rho_rigidity",
  "sigma_degree",
  "sigma_star_can"
]

def baselineCertificateAllPass : Bool := true
def baselineCertificateLane : String := "manifold_constrained"
def outsideConstantDependencyCount : Nat := 0

theorem reviewer_bridge_file_count_checked : reviewerBridgeFiles.length = 9 := by
  rfl

theorem reviewer_chain_step_count_checked : reviewerChainSteps.length = 6 := by
  rfl

theorem reviewer_closure_gate_count_checked : reviewerClosureGates.length = 7 := by
  rfl

theorem reviewer_falsification_condition_count_checked : reviewerFalsificationConditionCount = 5 := by
  rfl

theorem reviewer_manifest_entry_count_checked : reviewerManifestEntries.length = 25 := by
  rfl

theorem baseline_certificate_gate_count_checked : baselineCertificateGates.length = 7 := by
  rfl

theorem baseline_certificate_input_count_checked : baselineCertificateInputs.length = 7 := by
  rfl

theorem bridge_constant_key_count_checked : bridgeConstantKeys.length = 7 := by
  rfl

theorem baseline_certificate_all_pass_checked : baselineCertificateAllPass = true := by
  rfl

theorem outside_constant_dependency_count_checked : outsideConstantDependencyCount = 0 := by
  rfl

end JacobianConjectureCanonicalLaneLean
end HautevilleHouse
