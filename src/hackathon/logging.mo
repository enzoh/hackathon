import Array "mo:base/Array";

module {
  public type Event = {
    countryCode : Text;
    ip : Text;
    language : Text;
    lat : Text;  // should be Float but IDL can't deserialize yet
    lon : Text;  // should be Float but IDL can't deserialize yet
    platform : Text;
    region : Text;
    resolution : Text;
    timestamp : Nat;
    userAgent : Text;
  };

  public class Logger() {
    var eventLog : [Event] = [];

    public func log(event : Event) { eventLog := Array.append(eventLog, [event]); };

    public func getLogs() : [Event] { eventLog };
  };
};
