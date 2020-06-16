import MathUtils "./Utils/Math";
import StringUtils "./Utils/String";
import Ideas "./ideas";
import Logging "./logging";

actor Hackthon {
  type Idea = Ideas.Idea;
  type Event = Logging.Event;

  flexible let PRNG = MathUtils.Random();
  flexible let Logger = Logging.Logger();

  // `getIdea` selects a random Internet Computer "superpower", type of
  // software, and a 2030 Sustainable Development Goal from the United Nations,
  // and combines them into a single idea for a "Savior App". It has to be an
  // update method and not a query to persist progression of the randomness.

  public func getIdea(event : Event) : async Idea {
    let superpower = Ideas.makeIdea(PRNG.sample(Ideas.superpowerList));
    let software = Ideas.makeIdea(PRNG.sample(Ideas.softwareList));
    let solution = Ideas.makeIdea(PRNG.sample(Ideas.solutionList));
    Logger.log(event);

    {
      idea = StringUtils.join([superpower.idea, software.idea, solution.idea], " ");
      desc = StringUtils.join([superpower.desc, software.desc, solution.desc], " ");
      link = solution.link;
    }
  };

  // `getLogs` retrieves all the events we've logged so far.

  public query func getLogs() : async [Event] {
    Logger.getLogs()
  };
};
