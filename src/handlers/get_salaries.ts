import { IRequest } from 'itty-router';
import { Env } from '../env';

const getSalaries = async (request: IRequest, env:Env) => {
	let salaries = await env.DB.prepare('SELECT * FROM salaries').bind().all();
	return new Response(JSON.stringify(salaries), {
		headers: { 'content-type': 'application/json' },
	});
};
export default getSalaries;