# Stage 03 — Findings, Impact and Risk Prioritization

**Time:** 60 minutes · **Deliverable:** two draft findings tied to synthetic evidence.

## Workplace concept

A well-formed finding states **what was observed, what requirement it conflicts with, why it matters, what remains unverified, and what should change**. Severity should be reasoned from context, not copied from a scanner.

## Finding A — Excessive application role permissions

- **Evidence:** E-01 and E-02
- **Observation:** supplied matrix includes a modify privilege for a viewer intended only to read assigned reports
- **Hypothesis:** if enforced, a viewer could make unauthorized changes to report settings
- **Not demonstrated:** successful unauthorized modification or impact on any real system
- **Recommendation:** remove unneeded modify operations from the viewer role and design negative authorization tests
- **Confidence:** high in the document mismatch; unknown in live exploitability

## Finding B — Broad demonstration IAM policy

- **Evidence:** E-03 and E-04
- **Observation:** sample policy grants `s3:*` over `*` despite stated read-only prefix need
- **Hypothesis:** broad allowed actions may increase potential blast radius if credentials are misused
- **Not demonstrated:** actual AWS access, effective privileges or production exposure
- **Recommendation:** scope allowed actions/resources to verified workload needs, then validate using authorized tools
- **Confidence:** high in the policy-versus-requirement mismatch; unknown in runtime impact

## Step 1 — Complete the findings register

| ID | Title | Evidence | Business concern | Validation gap | Proposed priority |
| --- | --- | --- | --- | --- | --- |
| F-01 | Viewer authorization mismatch | E-01, E-02 | Integrity | App enforcement untested | Requires owner review |
| F-02 | Overbroad sample IAM policy | E-03, E-04 | Cloud access scope | Effective permissions untested | Requires owner review |

## Step 2 — Explain prioritization

Use qualitative reasoning: sensitive data, plausible misuse, ease of exploitation, compensating controls and business criticality are **unknown**. Therefore do not assert “Critical” or invent a CVSS score. State what facts are needed to prioritize each finding.

## Step 3 — Write a recommendation

For each finding provide a change proposal, likely owner (application team or cloud identity team), validation evidence required and any risk of breaking legitimate use.

## Checkpoint

A peer should be able to trace every statement to E-01–E-06 and clearly identify unverified assumptions.

[Stage 04 — Remediation](../04-remediation-and-retest/README.md) · [Series index](../README.md)
