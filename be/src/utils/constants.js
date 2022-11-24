"use strict";
Object.defineProperty(exports, "__esModule", { value: true });
exports.HOST = exports.StatusApi = void 0;
// status response
const StatusApi = {
    STATUS_SUCCESS: 200,
    STATUS_VALIDATION: 400,
    STATUS_EXCEPTION: 500,
};
exports.StatusApi = StatusApi;
const HOST = {
    PORT: 8080,
    URL: "http://localhost:8080"
};
exports.HOST = HOST;
