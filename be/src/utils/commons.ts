import { StatusApi } from "./constants";
import { Response } from "express";

/**
 * handle response success
 * @param params
 * @returns
 */
const responseSuccess = (
  res: Response,
  params?: Array<string>,
  message?: any
) => {
  let results: object = { status: StatusApi.STATUS_SUCCESS };
  if (message) results = { ...results, message: message };
  if (params) results = { ...results, result: params };
  return res.status(StatusApi.STATUS_SUCCESS).json(results);
};

/**
 * handle response failure
 * @param params
 * @returns
 */
const responseFailure = (
  res: Response,
  status: number,
  message?: any,
  params?: Array<string>
) => {
  let results: object = { status: status };
  if (message) results = { ...results, message: message };
  if (params && params.length > 0) results = { ...results, result: params };
  return res.status(status).json(results);
};

export { responseSuccess, responseFailure };
