
# QA strategy

## Test layers
### Unit
Pure logic:
- validation
- scheduling rules
- pricing policy checks
- confidence thresholds
- guardrail checks

### Integration
Cross-boundary flows:
- webhook to DB write
- auth and tenant isolation
- worker activities
- notification provider adapters
- retrieval filters
- quote generation path

### E2E
Operator-visible journeys:
- sign in
- inspect call
- review extracted fields
- approve schedule
- review quote
- manage KB

### Smoke
Release sanity:
- app boots
- auth works
- health endpoint works
- DB connection works
- worker starts
- basic lead creation path available

### Regression
Every release:
- tenant isolation
- no duplicate notifications
- no double booking
- quote policy enforcement
- retrieval tenant filter integrity

## Manual QA checkpoints
- every 10-day vertical slice demo
- end-of-phase release candidate pass
- beta hardening pass before live customers
