async function main() {
  console.log("Worker starting...");
}

main().catch((error) => {
  console.error(error);
  process.exit(1);
});
