# Usamos uma imagem pré-construída e popular da comunidade que já contém o Fooocus e suas dependências.
# Isso economiza muito tempo de build e resolve problemas de dependência.
FROM runpod/fooocus:2.1.865

# A porta padrão que o Fooocus usa.
EXPOSE 7865

# O diretório de trabalho dentro do contêiner.
WORKDIR /app

# Comando para iniciar o Fooocus.
# O argumento '--listen' permite que ele seja acessado de fora do contêiner.
CMD ["python", "entry_with_update.py", "--listen", "0.0.0.0"]