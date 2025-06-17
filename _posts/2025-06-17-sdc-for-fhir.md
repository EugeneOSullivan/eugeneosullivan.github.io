---
layout: post
title: "Structured Data Capture (SDC) for FHIR: Smarter Forms, Smarter Data"
date: 2025-06-17
categories: [blog]
tags: [FHIR, SDC, healthcare, devdays, Forms, interoperability]
description: "How SDC for FHIR transforms form-driven data capture into reusable, interoperable healthcare workflows—insights from Firely DevDays."
---

At this year's Firely DevDays in Amsterdam, one of the standout discussions was around **Structured Data Capture (SDC)**—an underutilized gem in the FHIR ecosystem. For those of us designing modern healthcare platforms, SDC is more than just a spec—it's a blueprint for turning user-driven forms into clean, interoperable FHIR resources. I'm looking into opportunities to use this fort managing reference data within my area.

## What Is SDC for FHIR?

**Structured Data Capture (SDC)** is a FHIR implementation guide that defines how to:

- Build dynamic, reusable **Questionnaires**
- Capture answers in a structured, codified way (**QuestionnaireResponse**)
- Automatically convert form data into core FHIR resources (like `Patient`, `Observation`, or `Condition`)

It's centered on the `Questionnaire` and `QuestionnaireResponse` resource pair, enriched with extensions to support:

- Conditional logic
- Calculated expressions
- Terminology bindings
- Pre-population using FHIR queries

## Why It Matters

In many healthcare environments, we're still stuck with:

- **Manual data entry** (often duplicated across systems)
- **Rigid UIs** that can't adapt to clinical or operational context
- **Custom form logic** that isn't portable or standards-based

With SDC, you get:

**Dynamic forms** with fhirpath support and more
**Standardized structure** aligned with FHIR  
**Reusability** across projects and workflows  
**Interoperability**—`QuestionnaireResponse` can be transformed into canonical FHIR resources

## Real-World Uses from DevDays

Some highlights from Firely DevDays included:

- **Reference data forms**: Using SDC to manage `PractitionerRole` and `Organization` records with real-time validation
- **SMART-on-FHIR patient intake**: Dynamic questionnaires populated with contextual patient data
- **FHIR-native submission pipelines**: Using `QuestionnaireResponse` to generate `Observation` and `Condition` resources, automatically

## Why You Should Explore It

If you're building form-driven UIs for:

- Admin panels (e.g., managing reference data)
- Service-user onboarding or surveys
- Clinical documentation workflows

Then SDC gives you:

- A consistent, standards-based model
- Easier integration with your FHIR backend (like Google Healthcare API)
- Declarative, reusable form logic

In short, **SDC helps you turn forms into FHIR-native apps**.

---

### Want to Dive Deeper?

- [SDC Implementation Guide](https://build.fhir.org/ig/HL7/sdc/)
- [FHIRPath Lab](https://fhirpath-lab.com/Questionnaire)
- [LHC-Forms by NLM](https://lhcforms.nlm.nih.gov/)

---

*Working on healthcare forms in the NHS or cloud-native reference data tooling? I'd love to hear what you're doing with SDC. Get in touch or drop a comment below.*

