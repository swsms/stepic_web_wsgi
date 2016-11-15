def app(environ, start_response):
    qs = environ.get('QUERY_STRING', '')
    data = qs.replace('&', '\n').encode()
    start_response("200 OK", [
        ("Content-Type", "text/plain"),
        ("Content-Length", str(len(data)))
    ])
    return iter([data])
