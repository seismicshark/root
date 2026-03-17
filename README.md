# SeismicShark Platform Monorepo Starter

This monorepo preserves the original starter structure and execution scaffolding while normalizing ownership under the **seismicshark.com** umbrella domain.

## Ownership and identity layer
- Umbrella company / platform identity: `seismicshark.com`
- Founder / vendor ownership emails:
  - `root@seismicshark.com`
  - `infra@seismicshark.com`
  - `billing@seismicshark.com`
- Product branding remains separate from the umbrella identity layer.

## Domain map

### Umbrella domain
- `seismicshark.com` → company identity, vendor ownership, admin/recovery email layer, and future company site

### App domain
- `callintakepro.com` → main authenticated application (`apps/web`) and backend (`apps/api`, `apps/worker`)

### Marketing domains hosted on existing DreamHost shared unlimited
- `getcallintakepro.com`
- `morejobsfromcalls.com`
- `turncallsintoleads.com`

Marketing content for those sites lives under `apps/marketing-dreamhost/public_html/`.

## Primary apps
- `apps/web` — owner/dispatcher dashboard for Call Intake Pro
- `apps/api` — API layer, auth middleware, webhooks, CRUD, billing enforcement
- `apps/worker` — Temporal workers, workflows, jobs
- `apps/marketing-dreamhost` — static marketing subtree for the DreamHost marketing domains

## Primary packages
- `packages/db` — DB client, repository layer, Supabase-facing code
- `packages/schemas` — domain, AI, workflow types/schemas
- `packages/validation` — shared validation and error helpers
- `packages/ai` — model router, prompts, task handlers, guardrails
- `packages/retrieval` — chunking, embeddings, search, provenance
- `packages/scheduling` — deterministic scheduling rules and slot generation
- `packages/pricing` — range estimate rules and policy checks
- `packages/notifications` — SMS/email templates and delivery plumbing
- `packages/observability` — logger, Sentry, PostHog, metrics, tracing
- `packages/config` — shared env/constants/feature flags
- `packages/billing` — Stripe-focused package added during merge
- `packages/workflows` — workflow orchestration shared support added during merge

## QA layout
- `tests/unit`
- `tests/integration`
- `tests/e2e`
- `tests/smoke`
- `tests/regression`

## Planning docs included in repo
Uploaded planning/source documents are copied into `docs/source-plans/` so build decisions stay attached to the codebase.

## Build order
1. Foundation, auth, tenant isolation
2. Lead + call schema and CRUD
3. Twilio/Vapi inbound path
4. Extraction + human review
5. Durable workflows
6. Follow-up automation
7. Scheduling
8. Pricing
9. Retrieval
10. Hardening, evals, billing, beta

This is a starter scaffold, not a finished SaaS. It is organized to support the exact build sequence from the planning documents while keeping product domains separate from the SeismicShark umbrella ownership layer.
