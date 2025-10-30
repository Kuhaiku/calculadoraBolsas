# 1. Use uma imagem base leve com NGINX
# NGINX é um servidor web de alta performance, perfeito para arquivos estáticos.
FROM nginx:alpine

# 2. Copie seu arquivo da calculadora para a pasta padrão do NGINX
# Nós renomeamos 'calculadora.html' para 'index.html'
# para que ele seja a página padrão quando você acessar o servidor.
COPY calculadora.html /usr/share/nginx/html/index.html

# 3. Exponha a porta 80 (porta padrão do NGINX)
EXPOSE 80

# O comando para iniciar o NGINX já está incluído na imagem base,
# então não precisamos adicionar um CMD.