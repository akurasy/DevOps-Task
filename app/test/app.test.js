const test = require("node:test");
const assert = require("node:assert");

test("application message contains Damolak", () => {
  const message = "Thank you Damolak for the DevOps task and the consideration.";
  assert.ok(message.includes("Damolak"));
});
