# Stage 04 — Remediation Planning and Retesting

**Time:** 45–60 minutes · **Deliverable:** an owner-aware remediation tracker and safe validation plan.

## Why this matters at work

A recommendation is not a fix, and a change ticket is not evidence of implementation. Remediation needs approval, ownership, a rollback approach, and retesting in an authorized environment.

## Stage 1 — Track proposed changes

| Finding | Proposed change | Owner role | Status | Retest evidence needed |
| --- | --- | --- | --- | --- |
| F-01 | Viewer becomes read-only for assigned reports | Application owner | Proposed (E-05) | Role-based positive and negative tests |
| F-02 | Limit S3 to required read operations/resources | Cloud IAM owner | Proposed (E-06) | Policy evaluation plus authorized action tests |

Use **proposed** as the status because the fixture contains no proof of deployment.

## Stage 2 — Design role-based retests

| Synthetic actor | Action | Expected behavior after fix |
| --- | --- | --- |
| Viewer | Read assigned report | Allowed |
| Viewer | Modify report settings | Denied |
| Administrator | Modify report settings | Allowed only if authorized |
| Viewer | Read unassigned report | Denied |

Do not run these against a real application unless the owner has expressly approved the scope.

## Stage 3 — Design a cloud IAM retest

A fictional report service should be able to read an approved object but not write/delete, list unrelated resources or read other prefixes unless specifically needed. A complete AWS IAM test also needs resource policies, explicit denies, service control policies, boundaries and context evaluated.

**No AWS calls are required or performed** for this learning stage.

## Stage 4 — Define change safety

Write a four-part change plan: approval; implementation; smoke tests for legitimate users; rollback if legitimate operations fail. Identify the evidence and person responsible for declaring a finding closed.

## Step 5 — Recognize incomplete closure

E-05 and E-06 describe planned fixes only. Therefore both findings remain **open / awaiting implementation**, even though this stage's *training deliverable* is complete.

## Checkpoint

Your plan has an owner, proposed change, expected allowed/denied behavior, validation evidence, rollback consideration and honest status for each finding.

[Stage 05 — Capstone report](../05-capstone-report/README.md) · [Series index](../README.md)
