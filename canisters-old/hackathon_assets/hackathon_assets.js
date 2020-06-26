import actorInterface from "ic:idl/hackathon_assets";

export default icHttpAgent.makeActorFactory(actorInterface)({
  canisterId: "ic:02000000000000000000000000000000000153",
});
