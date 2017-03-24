require 'socket'

host = 'www.baidu.com'
port = 80
path = "/index.htm"

# 这是个 HTTP 请求
request = "GET #{path} HTTP/1.0\r\n\r\n"

socket = TCPSocket.open(host, port)   # 连接服务器
socket.print(request)                 # 发送请求
response = socket.read                # 读取完整的响应

headers, body = response.split("\r\n\r\n", 2)
print body                            # 输出结果
