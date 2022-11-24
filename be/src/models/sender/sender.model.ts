import { PrismaClient } from "@prisma/client";

const prisma = new PrismaClient();

const getSenderById = async (id: String) => {
  try {
    return await prisma.$queryRaw`select * from p_info where StaffCode =${id}`;
  } catch {
    return null;
  }
};

const createSeeder = async (fields: any) => {
  try {
    await prisma.p_info.create({
      data: fields,
    });
    return true;
  } catch {
    return false;
  }
};

const senderModel = {
  getSenderById,
  createSeeder,
};

export default senderModel;
