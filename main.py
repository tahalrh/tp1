import http.server
import socketserver

PORT = 8000
Handler = http.server.SimpleHTTPRequestHandler

if __name__ == "__main__":
    with socketserver.TCPServer(("", PORT), Handler) as httpd:
        print(f"Serveur demarre sur le port {PORT} - http://localhost:{PORT}")
        httpd.serve_forever()
