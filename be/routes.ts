import express, { Express } from "express";
import dotenv from "dotenv";
import cors from "cors";
import routerAuth from "./src/page/auth";
import { HOST } from "./src/utils/constants";

dotenv.config();
const app: Express = express();
const port = process.env.PORT || HOST.PORT;

var corsOptions = {
  origin: process.env.API_URL
};
app.use(cors(corsOptions));

app.use("/users", routerAuth);

app.listen(port, () => {
  console.log(`[server]: Server is running at https://localhost:${port}`);
});
