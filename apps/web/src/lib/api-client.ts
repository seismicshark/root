export async function apiGet<T>(path: string): Promise<T> {
  const response = await fetch(path, { credentials: "include" });
  if (!response.ok) {
    throw new Error(`API GET failed: ${response.status}`);
  }
  return response.json() as Promise<T>;
}
