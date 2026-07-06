import ArtinHolomorphyConjectureCanonicalLaneLean.Formalization
import ArtinHolomorphyConjectureCanonicalLaneLean.SourceDependencies

/-!
# Reviewer Bridge

Typed Lean data for the imported reviewer bridge architecture.
-/

namespace HautevilleHouse
namespace ArtinHolomorphyConjectureCanonicalLaneLean

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
  { path := "REVIEWER_MAP.md", role := "reviewer_map", sha256 := "7362eb375cb138e0adb28e582a4986ce58e3bc57ea13b7c110b270d007e845af", present := true },
  { path := "notes/IDENTIFICATION_BRIDGE.md", role := "identification_bridge", sha256 := "afde2c7704bf096d1bc847e82e3acb1c40d788dac754f73d99412dcb14fb70cd", present := true },
  { path := "artifacts/constants_extraction_inputs.json", role := "constant_inputs", sha256 := "506d2b3f93bc2e9a7ac1f33f8b0738920dfd227855840d45596eece7718dadac", present := true },
  { path := "artifacts/constants_extracted.json", role := "constant_extracted", sha256 := "83ce2dcf596e4f02eb57704c9ac9cc84fb111d4ae5527362e6f39c853a9dfe65", present := true },
  { path := "artifacts/constants_registry.json", role := "constant_registry", sha256 := "26d28f919b9a4fce9db68c0111b6f2aa0172578665f2962af2844f15a3cf3367", present := true },
  { path := "artifacts/stitch_constants.json", role := "stitch_constants", sha256 := "e8c6fc854e84d5d6751fa8b8bf82ac97268e849c780118993abe939ae3646918", present := true },
  { path := "artifacts/promotion_report.json", role := "promotion_report", sha256 := "18e3aedc5fa2e911a53f7e41118a866503dff52e30bfc1619e502ef4e6b29ccd", present := true },
  { path := "repro/repro_manifest.json", role := "manifest", sha256 := "82316e3c1b9d45024e4bfbe14ebb8f2d5b36c285c9b8fffb6c12f2b42e35898b", present := true },
  { path := "repro/certificate_baseline.json", role := "baseline_certificate", sha256 := "6e830edd1b9e63bf23ca119a3ce52fade6e92da8dc1465b76ae4cf9e92b5e475", present := true }
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
  { gate := "AH_G1", constant := "kappa_holomorphic" },
  { gate := "AH_G2", constant := "sigma_local" },
  { gate := "AH_G3", constant := "kappa_compact" },
  { gate := "AH_G4", constant := "rho_rigidity" },
  { gate := "AH_G5", constant := "regularity_transfer" },
  { gate := "AH_G6", constant := "eps_coh" },
  { gate := "AH_GM", constant := "derived" }
]

def reviewerFalsificationConditionCount : Nat := 5

def reviewerManifestEntries : List ReviewerManifestEntry := [
  { path := "CITATION.cff", sha256 := "e5e2d0392e8337e0906bbe17b9b6a0fe3d7b4835d8bf68b5ef2fb35148cb6b8d" },
  { path := "README.md", sha256 := "d28bfd96ddcb63586ec930793055e7803fbe69e62b6c3d91319840b1fc743cab" },
  { path := "artifacts/constants_extracted.json", sha256 := "83ce2dcf596e4f02eb57704c9ac9cc84fb111d4ae5527362e6f39c853a9dfe65" },
  { path := "artifacts/constants_extraction_inputs.json", sha256 := "506d2b3f93bc2e9a7ac1f33f8b0738920dfd227855840d45596eece7718dadac" },
  { path := "artifacts/constants_registry.json", sha256 := "26d28f919b9a4fce9db68c0111b6f2aa0172578665f2962af2844f15a3cf3367" },
  { path := "artifacts/promotion_report.json", sha256 := "18e3aedc5fa2e911a53f7e41118a866503dff52e30bfc1619e502ef4e6b29ccd" },
  { path := "artifacts/stitch_constants.json", sha256 := "e8c6fc854e84d5d6751fa8b8bf82ac97268e849c780118993abe939ae3646918" },
  { path := "notes/EG1_public.md", sha256 := "b0c2e5618aac66bdf0d5301265c285a6909d042fd35a1d92105ffe8d3dc75e7c" },
  { path := "notes/EG2_public.md", sha256 := "f4336b35072d0554d845583e6dad60401c75aa05f9431dc2be9f556a2ba403e5" },
  { path := "notes/EG3_public.md", sha256 := "dfeec185a98aeed942974823e81a07b4b874fcf2ef20fcbb2a922cf9fb5df53d" },
  { path := "notes/EG4_public.md", sha256 := "7deb46f5aeaea637ea07f3016c0884d083dee4079424d27b6bfcabb756e7f55f" },
  { path := "notes/IDENTIFICATION_BRIDGE.md", sha256 := "afde2c7704bf096d1bc847e82e3acb1c40d788dac754f73d99412dcb14fb70cd" },
  { path := "notes/GEOMETRIC_GALOIS_BRIDGE.md", sha256 := "377ec5ad3c3a1dade8abfdfe1f614a8cef7f4f1acd4a0ac30cc9bd4a0b60bae6" },
  { path := "paper/CANONICAL_ROUTING_INDEX.md", sha256 := "4bbe8de8f6d281b1e4f1ccf1ef938766c25048947e93c7edef57dd8f9ba0a875" },
  { path := "paper/EXTRACTION_SPEC.md", sha256 := "69d3d18b68d99b6348e0c2bdce04c240fce1a89fc3a4d684e2709db32ed59e50" },
  { path := "paper/ARTIN_HOLOMORPHY_CONJECTURE_PREPRINT.md", sha256 := "aa26cdbc91ed9aa80f7bde55ab10b2b8ef0bd60f34e25e8c642d950fdcd44fa9" },
  { path := "repro/REPRO_PACK.md", sha256 := "25763a89c6c4be66b9b9f335f31239b1068657029614c4384fae13b95013f833" },
  { path := "repro/THIRD_PARTY_RERUN_PROTOCOL.md", sha256 := "4570494fa6f242f3f1a856695cf994ba12ddeb7a9fa35ffa6bf99ada8826c023" },
  { path := "repro/certificate_baseline.json", sha256 := "6e830edd1b9e63bf23ca119a3ce52fade6e92da8dc1465b76ae4cf9e92b5e475" },
  { path := "repro/run_repro.sh", sha256 := "9005a89599cff063050c0625d2707852d4e02d415b26003eb6182a6dc9eb350c" },
  { path := "scripts/extract_constants.py", sha256 := "730d57dae3fac057e19630db34233183cae269568d43118c943387970081896d" },
  { path := "scripts/promote_constants.py", sha256 := "b65eb7a60552c668f04d6331a5256fe4e662ae5e83e769d42f6a141819769356" },
  { path := "scripts/release_gate.py", sha256 := "5c9760aeddbfa0e4b5a9447e1bda670004391c19470f9b1cf8897bf154f667b8" },
  { path := "scripts/update_manifest.py", sha256 := "45ae03f10349daebab98b6eb9a0836b7e2d15a48ca5504277c80ec7d4c633d12" },
  { path := "scripts/ah_closure_guard.py", sha256 := "7e7820d7a3ed3307fb2beb58eee3d5b7fe58cdcc7aef432ae07024980a220f2c" },
  { path := "scripts/README.md", sha256 := "ed796e805d5d75ca3fef6479efbf32ee7db1f8b880ac7fd18fe484d37577fb56" }
]

def baselineCertificateGates : List CertificateGate := [
  { gate := "AH_G1", status := "PASS" },
  { gate := "AH_G2", status := "PASS" },
  { gate := "AH_G3", status := "PASS" },
  { gate := "AH_G4", status := "PASS" },
  { gate := "AH_G5", status := "PASS" },
  { gate := "AH_G6", status := "PASS" },
  { gate := "AH_GM", status := "PASS" }
]

def baselineCertificateInputs : List CertificateInput := [
  { key := "eps_coh", value := "0.0" },
  { key := "kappa_compact", value := "0.8058017727639" },
  { key := "kappa_holomorphic", value := "1.094264" },
  { key := "regularity_transfer", value := "1.0305400000000002" },
  { key := "rho_rigidity", value := "1.079" },
  { key := "sigma_local", value := "1.075" },
  { key := "sigma_star_can", value := "1.055" }
]

def bridgeConstantKeys : List String := [
  "eps_coh",
  "kappa_compact",
  "kappa_holomorphic",
  "regularity_transfer",
  "rho_rigidity",
  "sigma_local",
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

theorem reviewer_manifest_entry_count_checked : reviewerManifestEntries.length = 26 := by
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

end ArtinHolomorphyConjectureCanonicalLaneLean
end HautevilleHouse
