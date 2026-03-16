# Accounts and ownership

## Umbrella ownership domain
`seismicshark.com`

## Canonical owner emails
- `root@seismicshark.com` — registrar super-admin, critical recovery, and root ownership where unavoidable
- `infra@seismicshark.com` — GitHub, Supabase, Twilio, Vapi, OpenAI, Resend, Sentry, PostHog, Cloudflare
- `billing@seismicshark.com` — Stripe and vendor billing notices

## Product-domain rule
Do not use `callintakepro.com` or any marketing domain as the root ownership identity for vendor accounts.

## Why this exists
The umbrella domain separates company control from product branding so a future product sale, rebrand, or additional SaaS launch does not require vendor-account identity migration.
