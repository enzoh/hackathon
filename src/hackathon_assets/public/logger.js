import { pick } from "./utils";

const defaults = {
  countryCode: "",
  ip: "",
  lat: "0.0", // should be a float but IDL can't deserialize yet
  lon: "0.0", // should be a float but IDL can't deserialize yet
  region: "",
};

export const log = async () => {
  let data;
  try {
    const res = await fetch("http://ip-api.com/json");
    const json = await res.json();
    json.ip = json.query;
    data = pick(json, Object.keys(defaults));
  } catch (_) {
    data = { ...defaults };
  }
  const { language, platform, userAgent } = navigator;
  return {
    ...data,
    language,
    lat: data.lat.toFixed(3),
    lon: data.lon.toFixed(3),
    platform,
    resolution: `${window.screen.width}x${window.screen.height}`,
    timestamp: Date.now(),
    userAgent,
  };
};
