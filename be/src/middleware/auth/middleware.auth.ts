import jwt from "jsonwebtoken";
import { Response, Request, NextFunction } from "express";
import dotenv from "dotenv";
import { AUTHENTICATE } from "../../utils/constants";
import { getToken } from "../../utils/commons";
dotenv.config();

const verifyToken = (req: Request, res: Response, next: NextFunction) => {
  const token = req.body.token || req.query.token || getToken(req);

  if (!token) {
    return res.status(403).send("A token is required for authentication");
  }
  try {
    const secret = process.env.SECRET_KEY ?? AUTHENTICATE.SECRET_KEY;
    jwt.verify(token, secret);
  } catch (err) {
    return res.status(401).send("Invalid Token");
  }
  return next();
  
};

const middlewareAuth = {
  verifyToken,
};
export default middlewareAuth;
