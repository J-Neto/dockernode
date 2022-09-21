## Comandos úteis

# Criar build (imagem)
- docker build -t "pasta/diretorio atual ."
o ponto serve para indicar que está no mesmo diretório

# Colocar no ar 
- docker run -p 3000:3000 -d teste/dockernode
                "a porta que eu chamar: a porta que o docker está usando para este container"
                             "nome da imagem do container"