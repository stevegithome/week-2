export const manifest = (() => {
function __memo(fn) {
	let value;
	return () => value ??= (value = fn());
}

return {
	appDir: "_app",
	appPath: "week-2/_app",
	assets: new Set([".nojekyll","robots.txt"]),
	mimeTypes: {".txt":"text/plain"},
	_: {
		client: {start:"_app/immutable/entry/start.Bm1e596L.js",app:"_app/immutable/entry/app.CLcYGruV.js",imports:["_app/immutable/entry/start.Bm1e596L.js","_app/immutable/chunks/C-7znmlV.js","_app/immutable/chunks/C7R6z8Nb.js","_app/immutable/entry/app.CLcYGruV.js","_app/immutable/chunks/C7R6z8Nb.js","_app/immutable/chunks/Dj6f-nJM.js","_app/immutable/chunks/DEDqjojZ.js"],stylesheets:[],fonts:[],uses_env_dynamic_public:false},
		nodes: [
			__memo(() => import('./nodes/0.js')),
			__memo(() => import('./nodes/1.js'))
		],
		remotes: {
			
		},
		routes: [
			
		],
		prerendered_routes: new Set(["/week-2/"]),
		matchers: async () => {
			
			return {  };
		},
		server_assets: {}
	}
}
})();
