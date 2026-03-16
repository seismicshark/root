# Monorepo structure

## Root
- `apps/` deployable surfaces
- `packages/` shared domain packages
- `supabase/` project-level migrations and seed data
- `tests/` QA suites by test type
- `tooling/` bootstrap and release support scripts
- `docs/` architecture, runbooks, product docs, source planning docs

## Umbrella normalization
This repo is owned and governed under `seismicshark.com`.
- vendor ownership identities live under the umbrella domain
- product branding remains under product domains
- repo topology does not mirror domain ownership; it mirrors deployable surfaces and shared code

## Apps
### `apps/web`
Main application for `callintakepro.com`.
Contains authenticated UI for:
- owner dashboard
- dispatcher workflows
- leads
- calls/transcripts
- jobs
- technicians
- pricing rules
- knowledge base
- prompt versions
- workflow visibility
- admin/support actions

### `apps/api`
HTTP API and webhook intake.
Responsibilities:
- auth middleware
- tenant middleware
- CRUD routes
- Twilio webhooks
- Vapi event intake
- Stripe webhooks
- policy lookups
- workflow dispatch to Temporal

### `apps/worker`
Temporal worker runtime and scheduled jobs.
Responsibilities:
- inbound lead workflow
- missed call workflow
- confirmation/reminder/review workflows
- scheduling workflow
- estimate workflow
- eval runner / cost reporting / KB ingestion jobs

### `apps/marketing-dreamhost`
Static marketing subtree for DreamHost shared unlimited.
Contains one folder per marketing domain under `public_html/`.

## Packages
Use original package boundaries where present; augment with missing shared concerns.
- `db`
- `schemas`
- `validation`
- `ai`
- `retrieval`
- `scheduling`
- `pricing`
- `notifications`
- `observability`
- `config`
- `billing`
- `workflows`

## QA
All tests live at repo root by QA type so they stay visible:
- unit
- integration
- e2e
- smoke
- regression

## Planning docs
`docs/source-plans/` holds the uploaded planning artifacts that drove this structure.
