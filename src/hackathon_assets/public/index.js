import hackathon from "ic:canisters/hackathon";
import assets from "ic:canisters/hackathon_assets";
import { load, show, get, hide, update, bind } from "./utils";
import { log } from "./logger";
import "./index.css";

assets
  .retrieve("index.html")
  .then(load)
  .then(async () => {
    bind(".generate", "click", generateIdea);
    bind("#why", "click", showDescription);
  });

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

const showDescription = () => {
  hide("#why");
  show("#learn", "#description");
};
