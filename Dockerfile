FROM node
RUN cd /opt && \
    git clone https://github.com/suits-at/cryptonly.git

WORKDIR /opt/cryptonly

RUN npm install && npm run build

CMD ["npm", "run", "dev" ]
    
#Http Interface
EXPOSE 8080
