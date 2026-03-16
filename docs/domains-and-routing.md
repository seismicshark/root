# Domains and routing

## Umbrella ownership domain: `seismicshark.com`
Company identity, vendor ownership, recovery email, and future umbrella-site domain.
- root / recovery: `root@seismicshark.com`
- infra / vendor ownership: `infra@seismicshark.com`
- billing ownership: `billing@seismicshark.com`
- not used as the customer-facing SaaS runtime domain for Call Intake Pro

## `callintakepro.com`
Primary SaaS application.
- frontend app: `apps/web`
- backend API: `apps/api`
- worker runtime: `apps/worker`
- authenticated traffic, application onboarding, dashboard, settings, and operational UI

## `getcallintakepro.com`
DreamHost marketing domain.
- public marketing landing page
- CTA drives to `callintakepro.com`

## `morejobsfromcalls.com`
DreamHost marketing domain.
- pain/value page focused on call conversion
- CTA drives to `callintakepro.com`

## `turncallsintoleads.com`
DreamHost marketing domain.
- pain/value page focused on intake + lead capture
- CTA drives to `callintakepro.com`

## `callstobookings.com`
DreamHost marketing domain.
- pain/value page focused on booked jobs and conversion rate improvement
- CTA drives to `callintakepro.com/calls-to-bookings/`

## DreamHost notes
The DreamHost marketing domains are intentionally isolated in `apps/marketing-dreamhost/public_html/` so you can deploy them to shared hosting without coupling them to the app runtime.
