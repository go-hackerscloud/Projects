# OSCP-Oriented Practice 01 — Assessment Notes, Findings and Retesting

**Time:** 60–90 minutes · **Level:** Intermediate · **Environment:** Entirely synthetic; no target VM, exploit, or external scanning necessary.

**Goal:** practice a disciplined assessment workflow similar to the reporting and evidence-management skills needed for authorized penetration testing. This is **not an OffSec exam simulation or report template**; check OffSec's official current exam and reporting requirements separately.

## Scenario

You are reviewing a fictional internal demonstration service called **TRAINING-APP**. The following evidence is invented for study:

```text
Asset: TRAINING-APP (synthetic)
Approved scope: provided evidence sheet only
Observation A: demo-admin role has access to all project records
Observation B: demo-reader role needs read-only access to one project
Observation C: a sample access-control matrix indicates
               demo-reader can modify project settings
Limitation: no live application, accounts or tests were provided
```

**Do not describe any of this as a real vulnerability found in a live application.**

## Learning stages

### 1. Define scope and exclusions

Write a mini rules-of-engagement statement: you may analyze the synthetic evidence only. You may not attempt password attacks, contact third-party hosts, or search for customer systems.

### 2. Build a finding hypothesis

What possible authorization weakness does Observation C suggest? Explain why permission to modify settings may exceed a read-only role's business requirement.

### 3. Separate evidence from inference

| Statement | Classification |
| --- | --- |
| The fictional evidence sheet assigns modify access to demo-reader | Provided evidence |
| A real user can exploit this authorization gap | **Not established** |
| The design appears inconsistent with least privilege | Reasonable hypothesis |
| Production customer data is exposed | Unsupported claim |

### 4. Record the finding

Use [the professional-style training report](../ASSESSMENT-REPORT-TEMPLATE.md).

Suggested training finding title: **Excessive privileges in synthetic role matrix**.

Include the fictional scope, an accurate reproduction of the given observations, possible business impact, and explicit limitations.

### 5. Propose remediation

Recommend a role matrix that separates reading from administrative changes. Describe an approval step, negative authorization tests, and application logging.

### 6. Design a retest

Draft test cases for a future **authorized, isolated** application:

| Actor | Intended operation | Expected result |
| --- | --- | --- |
| demo-reader | Read assigned project | Allowed |
| demo-reader | Modify project settings | Denied |
| demo-admin | Modify project settings | Allowed when authorized |

You are **not** performing these actions against a real app. Note which evidence would be needed to establish a verified finding.

## Professional practices this teaches

- Scoping and rules of engagement
- Methodical evidence handling
- Understanding authorization and least privilege
- Report quality, remediation and retest design
- Communicating uncertainty without exaggerating severity

**Limitation:** Practical OSCP preparation requires much broader skills, including technical work in authorized environments. This one exercise only introduces reporting discipline.

## Checkpoint questions

1. Which statements are observations versus hypotheses?
2. What additional evidence would validate the suspected weakness?
3. Why is a synthetic matrix insufficient to claim exploitation?
4. How would you prioritize remediation if this were confirmed on a real system?

[OSCP roadmap](../../../certification-plan/oscp/README.md) · [Industry practice](../../../industry-practice/README.md) · [Certification projects](../README.md)
