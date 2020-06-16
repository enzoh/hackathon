import hackathon from "ic:canisters/hackathon";
import assets from "ic:canisters/hackathon_assets";
import { generate, load, show, hide, update, bind } from "./utils";
import "./index.css";

assets
  .retrieve("index.html")
  .then(load)
  .then(async () => {
    const lists = await hackathon.getLists();
    bind(".generate", "click", generateIdea(lists));
    bind(".why", "click", () => show("#description"));
  });

const generateIdea = (lists) => () => {
  const { idea, description, link } = generate(lists);
  hide("#splash");
  hide("#description");
  show("#results");
  update("#idea", idea);
  update("#description", description);
};
