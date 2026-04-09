const message = document.getElementById("message");
const helloButton = document.getElementById("helloButton");

const greetings = [
  "Welcome to your new website.",
  "Hello from plain JavaScript.",
  "Fresh, simple, and ready to customize.",
  "You now have a modern static starter page."
];

let greetingIndex = 0;

helloButton.addEventListener("click", () => {
  greetingIndex = (greetingIndex + 1) % greetings.length;
  message.textContent = greetings[greetingIndex];
});
