-- customer and lead domain
create table if not exists customers (
  id uuid primary key default gen_random_uuid(),
  account_id uuid not null references accounts(id) on delete cascade,
  name text,
  phone text,
  email text,
  address_line_1 text,
  city text,
  state text,
  postal_code text,
  notes text,
  preferred_contact_method text,
  created_at timestamptz default now(),
  updated_at timestamptz default now()
);

create table if not exists leads (
  id uuid primary key default gen_random_uuid(),
  account_id uuid not null references accounts(id) on delete cascade,
  customer_id uuid references customers(id) on delete set null,
  source text,
  status text,
  service_type text,
  urgency text,
  summary text,
  confidence_score numeric,
  captured_from_call_id uuid,
  preferred_time_window_json jsonb default '{}'::jsonb,
  created_at timestamptz default now(),
  updated_at timestamptz default now()
);

create table if not exists calls (
  id uuid primary key default gen_random_uuid(),
  account_id uuid not null references accounts(id) on delete cascade,
  customer_id uuid references customers(id) on delete set null,
  lead_id uuid references leads(id) on delete set null,
  twilio_call_sid text,
  vapi_call_id text,
  direction text,
  status text,
  started_at timestamptz,
  ended_at timestamptz,
  recording_url text,
  summary text,
  created_at timestamptz default now()
);
