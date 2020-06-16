import hackathon from "ic:canisters/hackathon";
import assets from "ic:canisters/hackathon_assets";
import { load, show, get, hide, update, bind } from "./utils";
import { log } from "./logger";
import "./index.css";

assets
  .retrieve("index.html")
  .then(load) // Load the static HTML and inject it into the DOM.
  .then(async () => {
    bind(".generate", "click", generateIdea);
    bind("#why", "click", showDescription);
  });

// Upon clicking a "generate" button, we show/hide different sections of the
// page and fire off two requests: first to a third-party to gather logging data
// and second to acquire the random idea from our canister.

const generateIdea = async () => {
  hide("#splash", "#results");
  show("#loading");

  const logData = await log();
  const { idea, desc, link } = await hackathon.getIdea(logData);
  update("#idea", idea);
  update("#description", desc);
  get("#learn").href = link;

  hide("#loading", "#description", "#learn");
  show("#results", "#why");
};

// We do some more show/hide logic if someone wants a longer description of the
// randomly-generated idea. This action also unveils a link to the United
// Nations page for the chosen goal.

const showDescription = () => {
  hide("#why");
  show("#learn", "#description");
};
