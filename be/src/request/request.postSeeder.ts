import * as Yup from "yup";

export const schema = Yup.object().shape(
  {
    staffCode: Yup.string().trim().required(),
  }
);

export type Person = Yup.TypeOf<typeof schema>;


