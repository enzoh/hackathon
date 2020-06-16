export const load = (encoded) => {
  get("#app").outerHTML = atob(encoded);
};

export const show = (...selectors) =>
  selectors.forEach((selector) => get(selector).classList.remove("hidden"));

export const hide = (...selectors) =>
  selectors.forEach((selector) => get(selector).classList.add("hidden"));

export const update = (selector, html) => {
  get(selector).innerHTML = html;
};

export const bind = (selector, eventName, callback) =>
  getAll(selector).forEach((el) => el.addEventListener(eventName, callback));

export const get = (selector) => document.querySelector(selector);
export const getAll = (selector) => document.querySelectorAll(selector);

export const pick = (obj, atts) =>
  atts.reduce((acc, val) => ({ ...acc, [val]: obj[val] }), {});
