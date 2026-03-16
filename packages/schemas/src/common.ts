import { z } from "zod";

export const UuidSchema = z.string().uuid();
export const PhoneE164Schema = z.string().regex(/^\+[1-9]\d{1,14}$/);
export const IsoDatetimeSchema = z.string().datetime({ offset: true });
