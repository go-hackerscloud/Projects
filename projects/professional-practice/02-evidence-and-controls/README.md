# Stage 02 — Evidence Collection and Control Review

**Time:** 45–60 minutes · **Deliverable:** a traceable evidence register and observed-versus-required control matrix.

## Why this matters at work

Good security findings distinguish **fact, interpretation, and unknowns**. A policy pasted into a report without its source, date, scope or business need may be misleading.

## Training evidence

Use only the six synthetic evidence items from the [series scenario](../README.md). They are pre-supplied inputs. No network activity is required.

## Step 1 — Create an evidence register

| ID | Source | Observation | Confidence | Missing verification |
| --- | --- | --- | --- | --- |
| E-01 | Synthetic role matrix | Viewer has modify permission | High confidence about supplied sheet only | Whether application enforces it |
| E-02 | Synthetic requirement | Viewer should be read-only | High confidence about supplied requirement | Real owner approval |
| E-03 | Synthetic IAM policy | Broad S3 action/resource wildcard | High confidence about sample policy | Effective AWS permissions |
| E-04 | Synthetic workload description | Read-only report prefix is needed | High confidence about stated need | Actual application calls |

Add E-05 and E-06 as **proposed remediation changes**, not proof of rollout.

## Step 2 — Compare requirements with controls

| Area | Intended state | Supplied state | Interpretation |
| --- | --- | --- | --- |
| Atlas viewer | Read assigned reports only | Modify settings permitted in matrix | Possible authorization design gap |
| Reporting service IAM | Read objects under one prefix | `s3:*` over `*` | Possible excess privilege |

## Step 3 — Explain uncertainty

You cannot conclude a real user can modify settings based only on a role matrix; enforcement may differ. An IAM allow statement also does not determine effective permissions without considering other policies, resource policies, boundaries and organizational controls.

Write one paragraph describing what additional authorized evidence would be needed.

## Step 4 — Preserve evidence responsibly

Copy synthetic input facts into your local evidence register, label each reference ID, and record the interpretation separately. Never attach production credentials, customer exports or confidential screenshots to a public GitHub repository.

## Checkpoint

Deliver an evidence register with six entries, a control matrix and a short **known / inferred / unknown** summary. Every claimed finding in Stage 03 must cite evidence IDs.

[Stage 03 — Findings](../03-findings-and-risk/README.md) · [Series index](../README.md)
