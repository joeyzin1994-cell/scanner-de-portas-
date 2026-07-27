local socket = require("socket")

io.write("IP ALVO: ")
local IP_ALVO
PORTAS_BASICAS = { 80, 443, 53, 21, 22, 114, 110, 25}

for _, PORTAS in ipairs(PORTAS_BASICAS) do
  conexao = socket.tcp()
  conexao:settimeout(5)
  
  local ok, erro = conexao:connect(IP_ALVO, PORTAS_BASICAS)
  
  if ok == 200 then
    print("[+] porta ABERTA em: " .. PORTAS_BASICAS)
  else
    print("[-] porta FECHADA em: " .. PORTAS_BASICAS)
  end
end
