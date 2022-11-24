"use strict";
Object.defineProperty(exports, "__esModule", { value: true });
exports.responseFailure = exports.responseSuccess = void 0;
const constants_1 = require("./constants");
/**
 * handle response success
 * @param params
 * @returns
 */
const responseSuccess = (res, params, message) => {
    let results = { status: constants_1.StatusApi.STATUS_SUCCESS };
    if (message)
        results = Object.assign(Object.assign({}, results), { message: message });
    if (params)
        results = Object.assign(Object.assign({}, results), { result: params });
    return res.status(constants_1.StatusApi.STATUS_SUCCESS).json(results);
};
exports.responseSuccess = responseSuccess;
/**
 * handle response failure
 * @param params
 * @returns
 */
const responseFailure = (res, status, message, params) => {
    let results = { status: status };
    if (message)
        results = Object.assign(Object.assign({}, results), { message: message });
    if (params && params.length > 0)
        results = Object.assign(Object.assign({}, results), { result: params });
    return res.status(status).json(results);
};
exports.responseFailure = responseFailure;
