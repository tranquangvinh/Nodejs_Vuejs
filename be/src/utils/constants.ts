// status response
const StatusApi = {
  STATUS_SUCCESS: 200,
  STATUS_VALIDATION: 400,
  STATUS_EXCEPTION: 500,
};
const HOST = {
  PORT: 8080,
  URL: "http://localhost:8080",
};

const AUTHENTICATE = {
  SECRET_KEY: "SflKxwRJSMeKKF2QT4fwpMeJf36POk6yJV_adQssw5c",
  EXPIRES_IN: "2h",
};

export { StatusApi, HOST, AUTHENTICATE };
