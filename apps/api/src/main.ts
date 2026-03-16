import { buildApp } from "./app";

const port = Number(process.env.PORT ?? 3001);

async function main() {
  const app = buildApp();
  await app.listen({ port, host: "0.0.0.0" });
  console.log(`API listening on ${port}`);
}

main().catch((error) => {
  console.error(error);
  process.exit(1);
});
