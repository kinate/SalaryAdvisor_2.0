import { IRequest, Router } from "itty-router";
import { Env } from "../env";
import { drizzle } from "drizzle-orm/d1";

const getSingleSalary = async (request:IRequest , env:Env)=>{
    let salary = await env.DB.prepare("SELECT * FROM salaries WHERE salary_code = ?")
    .bind(request.params.salary_code).first();
    console.log(request.params);
    return new Response(JSON.stringify(salary), {
		headers: { 'content-type': 'application/json' },
	});

};

export default getSingleSalary;