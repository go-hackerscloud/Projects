# Stage 01 — Engagement Planning and Scope

**Time:** 40–60 minutes · **Tools:** Markdown editor · **Deliverable:** a synthetic rules-of-engagement document and asset register.

## Why this matters at work

Professional assessors do not begin with scans or testing. They establish authorization, the business objective, system ownership, approved methods, communication channels, evidence retention and exclusions. When permission is absent, testing does not proceed.

## Scenario facts

The fictional project sponsor wants a **documentation-only review** of the Atlas Portal role matrix and the sample S3-style IAM policy. No infrastructure access, accounts, live endpoints or permission for scanning is provided.

## Step 1 — Write the objective

Draft one paragraph explaining why verifying least privilege in a reporting application matters: unauthorized settings changes can affect integrity, and overbroad cloud permissions can increase potential impact if misused.

## Step 2 — Define scope

Copy this example into your working notes and expand the missing fields:

```text
Project: Northstar Demo — Atlas Portal
Type: SYNTHETIC TRAINING SCENARIO
Approved materials: E-01 through E-06 in series README
Permitted methods: document review, reasoning and fictional test planning
Excluded: network scans, password attempts, live AWS queries, real user data
Approval: fictional scenario only; NOT authorization for external testing
Reporting: private learner report, then optionally a sanitized portfolio
```

## Step 3 — Build the asset register

| Asset | Classification | In-scope activity | Out-of-scope |
| --- | --- | --- | --- |
| Atlas Portal role matrix | Synthetic document | Compare intended and assigned role permissions | Testing a deployed application |
| Reporting IAM policy | Synthetic document | Compare policy breadth to stated need | Calling real AWS APIs |
| Proposed change tickets | Synthetic documents | Define retest expectations | Claiming changes are deployed |

## Step 4 — Identify engagement risks

Discuss accidental disclosure, overstating conclusions, unsupported severity ratings, missing business context and unapproved testing. Record one mitigation for each.

## Step 5 — Produce a scope sign-off checklist

Use [scope and evidence templates](../templates/README.md) and mark each item as **synthetic, completed, or not applicable**. Do not invent a real signatory or impersonate customer approval.

## Assessment checkpoint

You pass this stage when the objective, permitted evidence, exclusions, methodology, reporting audience and limitations are unambiguous.

**Question:** Would having a web application's URL grant permission to assess it? **Answer:** No. Explicit authorization and agreed scope are required.

[Stage 02 — Evidence](../02-evidence-and-controls/README.md) · [Series index](../README.md)
