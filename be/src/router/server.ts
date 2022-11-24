import express, { Express } from "express";
import dotenv from "dotenv";
import cors from "cors";
import { HOST } from "../utils/constants";
import router from './auth/index';
dotenv.config();
const app: Express = express();
const port = process.env.PORT || HOST.PORT;

var corsOptions = {
  origin: process.env.API_URL || HOST.URL
};


app.use(cors(corsOptions));

// parse requests of content-type - application/json
app.use(express.json());
// parse requests of content-type - application/x-www-form-urlencoded
app.use(express.urlencoded({ extended: true }));

app.use('/auth', router);

app.use((err:any, req:any, res:any) => {
	res.status(err.status || 500).send(err.message);
});

app.listen(port, () => {
  console.log(`[server]: Server is running at https://localhost:${port}`);
});