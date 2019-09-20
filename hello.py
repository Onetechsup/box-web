def application(environ, start_response):
	body = "\r\n".join(environ['QUERY_STRING'].split('&'))
	status = '200 OK'
	headers = [('Content_Type', 'text/plain')]
	start_response(status, headers)
	return [body]