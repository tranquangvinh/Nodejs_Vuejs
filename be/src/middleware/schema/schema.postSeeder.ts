import * as Yup from "yup";

const phoneRegExp = /^(?:\d{10}|\d{3}-\d{3}-\d{4}|\d{2}-\d{4}-\d{4}|\d{3}-\d{4}-\d{4})$/;

export const schema = Yup.object().shape(
  {
    shopCategory: Yup.string().trim().required(),
    shopName: Yup.string().trim().required(),
    shopUrl: Yup.string().trim().required().url(),
    shopAddress: Yup.string().trim().required(),
    shopTel: Yup.string().required().matches(phoneRegExp, {
      message: "Not a valid phone number",
      excludeEmptyString: true
    }),
    userEmail: Yup.string().email().trim(),
    freeText: Yup.string(),
    deleteFlg: Yup.number().oneOf([0, 1]),
  }
);

export default schema;


