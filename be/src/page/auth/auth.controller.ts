import { Response, Request } from "express";
import jwt from "jsonwebtoken";
import * as bcrypt from "bcrypt";
import senderModel from "../../models/sender/sender.model";
import { AUTHENTICATE } from "../../utils/constants";
import dotenv from "dotenv";
dotenv.config();

const register = async (req: Request, res: Response) => {
  const username = req.body.username.toLowerCase();
  const user = await senderModel.getSenderById(username);
  if (user) res.status(409).send("Tên tài khoản đã tồn tại.");
  else {
    const hashPassword = bcrypt.hashSync(req.body.password, 10);
    const newUser = {
      username: username,
      password: hashPassword,
    };
    const createUser = await senderModel.createSeeder(newUser);
    if (!createUser) {
      return res
        .status(400)
        .send("Có lỗi trong quá trình tạo tài khoản, vui lòng thử lại.");
    }
    return res.send({
      username,
    });
  }
};

const login = async (req: Request, res: Response) => {
  const secret = process.env.SECRET_KEY ?? AUTHENTICATE.SECRET_KEY;
  const expiresIn = process.env.EXPIRES_IN ?? AUTHENTICATE.EXPIRES_IN;
  // Our login logic starts here
  try {
    // Get user input
    const { StaffCode } = req.body;

    // Validate if user exist in our database
    const user = await senderModel.getSenderById(StaffCode);
    if (user) {
      // Create token
      const token = jwt.sign({ StaffCode }, secret, {
        expiresIn: expiresIn,
      });
      // user
      res.status(200).json({ token: token });
    }
    res.status(400).send("Invalid Credentials");
  } catch (err) {
    console.log(err);
  }
};

const welcome = async (req: Request, res: Response) => {
  res.status(200).send("Welcome 🙌 ");
};

const authController = {
  register,
  login,
  welcome
};

export default authController;
