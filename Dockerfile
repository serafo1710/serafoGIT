FROM node
LABEL maintaeiner = "serafo"
Label creation = "052420"
label release = "ver 05-24-20"

WORKDIR /var/prueba

COPY index.js /var/prueba

CMD ["node", "index"]

