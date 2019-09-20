def application(environ, start_response):
	body = "\n".join(environ['QUERY_STRING'].split('&'))
#	body = bytes(body, encoding='utf-8')
	status = '200 OK'
	headers = [('Content-Type', 'text/plain')]
	start_response(status, headers)
	return [body]