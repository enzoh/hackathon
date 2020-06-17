import { pick } from "./utils";

const defaults = {
  countryCode: "",
  ip: "",
  lat: "0.000", // Should be Float but Candid can't deserialize them yet.
  lon: "0.000", // Should be Float but Candid can't deserialize them yet.
  region: "",
};

export const log = async () => {
  let data;

  // We request additional data about the user by doing a IP-to-Geo lookup.
  // These are not guaranteed to be present, so we provide default values as
  // well (see above).

  try {
    const res = await fetch("http://ip-api.com/json");
    const json = await res.json();
    json.ip = json.query;
    json.lat = json.lat.toFixed(3);
    json.lon = json.lon.toFixed(3);
    data = pick(json, Object.keys(defaults));
  } catch (_) {
    data = { ...defaults };
  }

  // There's also valuable information about the browser itself, available via
  // the Navigator interface.

  const { language, platform, userAgent } = navigator;

  // We bundle these up, along with information we can derive about the system,
  // like screen resolution and current time, to log to our canister. To persist
  // the logs, they have to be sent as part of an update request.

  return {
    ...data,
    language,
    platform,
    resolution: `${window.screen.width}x${window.screen.height}`,
    timestamp: Date.now(),
    userAgent,
  };
};
