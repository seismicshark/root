# apps/worker

Temporal worker application.

## Workflow sequence
- InboundLeadWorkflow
- MissedCallWorkflow
- SchedulingWorkflow
- ConfirmationWorkflow
- ReminderWorkflow
- ReviewRequestWorkflow
- EstimateWorkflow

## Rules
- all workflow steps idempotent
- retries and backoff explicit
- failures observable
- duplicate notifications prevented
