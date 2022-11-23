import express, {Express, Response, Request } from "express";

const routerAuth = express.Router();

routerAuth.get("/", (req: Request, res: Response) => {
    res.send("Express abc + TypeScript Server");
});

export default routerAuth;