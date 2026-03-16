import type { ZodTypeAny } from "zod";

export function parseOrThrow<TSchema extends ZodTypeAny>(schema: TSchema, input: unknown) {
  return schema.parse(input);
}
