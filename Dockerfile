FROM node
LABEL maintaeiner = "serafo"
Label creation = "051020"
label release = "ver 05-10-20"

WORKDIR /var/prueba

COPY index.js /var/prueba

CMD ["node", "index"]

