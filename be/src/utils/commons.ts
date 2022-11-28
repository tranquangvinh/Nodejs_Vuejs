import { StatusApi } from "./constants";
import { Response, Request, NextFunction } from "express";

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

/**
 * handle get token from header
 * @param req
 * @returns
 */
const getToken = (req: Request) => {
  if (
    req.headers.authorization &&
    req.headers.authorization.split(" ")[0] === "Bearer"
  ) {
    return req.headers.authorization.split(" ")[1];
  }
  return null;
};

/**
 * handle validate for schema
 * @param req
 * @param res
 * @param next
 * @returns
 */
const validate =
  (schema: any) => async (req: Request, res: Response, next: NextFunction) => {
    try {
      await schema.validate({
        body: req.body,
        query: req.query,
        params: req.params,
      });
      return next();
    } catch (err: any) {
      return res.status(500).json({ type: err.name, message: err.message });
    }
  };

export { responseSuccess, responseFailure, getToken, validate };
