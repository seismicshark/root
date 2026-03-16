create table if not exists accounts (
  id uuid primary key default gen_random_uuid(),
  name text not null,
  vertical_type text,
  timezone text,
  billing_plan text,
  status text default 'trial',
  settings_json jsonb default '{}'::jsonb,
  created_at timestamptz default now(),
  updated_at timestamptz default now()
);

create table if not exists users (
  id uuid primary key default gen_random_uuid(),
  account_id uuid references accounts(id) on delete cascade,
  email text not null,
  name text,
  role text not null,
  status text default 'active',
  created_at timestamptz default now(),
  updated_at timestamptz default now()
);

create table if not exists audit_events (
  id uuid primary key default gen_random_uuid(),
  account_id uuid references accounts(id) on delete cascade,
  actor_type text,
  actor_id text,
  entity_type text,
  entity_id text,
  event_type text not null,
  payload_json jsonb default '{}'::jsonb,
  created_at timestamptz default now()
);
