import { Router } from "itty-router";
import getSalaries from "./handlers/get_salaries";
import getSingleSalary from "./handlers/get_single_salary";
import { Env } from "./env";

const router = Router();
router.get('/salaries',getSalaries)
.get('/salary', getSingleSalary)
.get('*',()=> new Response('Not found', {status:400}));

export default {
	async fetch(request, env, ctx): Promise<Response> {
		return router.fetch(request, env);
		// return new Response('Hello World!');
	},
} satisfies ExportedHandler<Env>;
