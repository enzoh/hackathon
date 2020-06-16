export const load = async (encoded) => {
  document.getElementById("app").outerHTML = atob(encoded);
};

export const generate = (inputs) => {
  const random = inputs.map(getRandom).map(parseArray);
  const idea = random.map((obj) => obj.idea).join(" ");
  const description = random.map((obj) => obj.description).join(" ");
  const link = random[2].link;
  return { idea, description, link };
};

const getRandom = (arr) => arr[Math.floor(Math.random() * arr.length)];
const parseArray = (arr) => ({
  idea: arr[0],
  description: arr[1],
  link: arr[2],
});

export const show = (selector) =>
  document.querySelector(selector).classList.remove("hidden");
export const hide = (selector) =>
  document.querySelector(selector).classList.add("hidden");
export const update = (selector, html) =>
  (document.querySelector(selector).innerHTML = html);
export const bind = (selector, eventName, callback) =>
  document
    .querySelectorAll(selector)
    .forEach((el) => el.addEventListener(eventName, callback));
