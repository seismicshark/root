import { z } from "zod";

export const LeadStatusSchema = z.enum([
  "new",
  "needs_review",
  "qualified",
  "scheduled",
  "closed_won",
  "closed_lost",
]);
