import actorInterface from "ic:idl/hackathon";

export default icHttpAgent.makeActorFactory(actorInterface)({
  canisterId: "ic:0100000000000000000000000000000000012D",
});
