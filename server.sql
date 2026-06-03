create table web_analytics (
  id uuid default gen_random_uuid() primary key,
  created_at timestamp with time zone default timezone('utc'::text, now()) not null,
  page_path text,
  referrer text,
  browser_language text
);

-- Slå RLS (Row Level Security) fra for denne tabel, 
-- så din hjemmeside må indsætte data direkte uden login.
alter table web_analytics disable row level security;
