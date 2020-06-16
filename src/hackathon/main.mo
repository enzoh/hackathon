import MathUtils "./Utils/Math";
import StringUtils "./Utils/String";
import Ideas "./ideas";
import Logging "./logging";

actor Hackthon {
  type Idea = Ideas.Idea;
  type Event = Logging.Event;

  flexible let PRNG = MathUtils.Random();
  flexible let Logger = Logging.Logger();

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

  public query func getLogs() : async [Event] {
    Logger.getLogs()
  };
};
