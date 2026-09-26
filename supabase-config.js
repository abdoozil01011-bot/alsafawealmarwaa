// Supabase configuration for GitHub Pages / static hosting.
// The publishable key is intended for browser use. Never put a service_role/secret key here.
const SUPABASE_URL = 'https://wmpqtsxjmwwlqbjbbyze.supabase.co';
const SUPABASE_PUBLISHABLE_KEY = 'sb_publishable_B_NxcIwjwjhMDZVAARPoCQ_PLOlbVG2';

const supabaseClient = window.supabase.createClient(
  SUPABASE_URL,
  SUPABASE_PUBLISHABLE_KEY
);
