import { PrismaClient } from "@prisma/client";

const prisma = new PrismaClient();


const getUser = async (id: String) => {
	try {
		return await prisma.$queryRaw`select * from p_info where StaffCode =${id}`;
	} catch {
		return null;
	}
};


 const createUser = async (fields: any) => {
	try {
        await prisma.p_info.create({
            data: fields,
          });
		return true;
	} catch {
		return false;
	}
};

const userModel = {
    getUser, 
    createUser
}
export default userModel;