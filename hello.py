def application(environ, start_response):
    start_response('200 OK', [('Content-Type', 'text/plain')])
    return [bytes('\n'.join(environ['QUERY_STRING'].split('&')),
                         encoding='utf-8')]