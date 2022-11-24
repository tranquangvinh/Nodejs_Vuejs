import { NextApiHandler, NextApiRequest, NextApiResponse } from "next";
import { number, object } from "yup";
import { ObjectShape, OptionalObjectSchema } from "yup/lib/object";
import { ObjectCheckKeyExist } from "../../interface";
import { checkExistIdMerchantRequestForm } from "../../model/merchantRequestForm";
import {
  checkField,
  replaceMessage,
  responseFailure,
} from "../../utils/commons";
import { Status } from "../../utils/constants";
import Message from "../../utils/messages";

/**
 * handle validate by schemas
 * @param schema
 * @param handler
 * @returns
 */
export function validate(
  schema: OptionalObjectSchema<ObjectShape>,
  handler: NextApiHandler
) {
  return async (req: NextApiRequest, res: NextApiResponse) => {
    let method: any = req.method;
    if (["POST", "PUT", "DELETE"].includes(method)) {
      try {
        let newSchema = null;
        let keyMap = [
          "shopCategory",
          "shopName",
          "shopUrl",
          "shopAddress",
          "shopTel",
          "userEmail",
          "freeText",
        ];
        let idvalidate = object({
          id: number()
            .required()
            .positive()
            .test(
              "CheckExistData",
              replaceMessage(Message.VALIDATION_MSG_E0001, ["id"]),
              function (item) {
                return checkExistIdMerchantRequestForm(item);
              }
            ),
        });
        switch (method) {
          case "POST":
            newSchema = schema;
            break;
          case "PUT":
            keyMap.push("id","deleteFlg");
            newSchema = schema.concat(idvalidate);
            break;
          default:
            keyMap = ["id"];
            newSchema = idvalidate;
        }
        let validateField: ObjectCheckKeyExist = checkField(req, keyMap);
        if (validateField.checkKeyValidate)
          return responseFailure(
            res,
            Status.STATUS_VALIDATION,
            replaceMessage(
              Message.VALIDATION_MSG_E0002,
              validateField.listKeyValue
            )
          );

        req.body = await newSchema
          .camelCase()
          .validate(req.body, { abortEarly: false, stripUnknown: true });
      } catch (err: any) {
        return responseFailure(res, Status.STATUS_VALIDATION, err.errors);
        // return res.status(400).json(
        //   {
        //     "message": err.message,
        //     "error": err.errors,
        //   }
        // );
      }
    }
    await handler(req, res);
  };
}
