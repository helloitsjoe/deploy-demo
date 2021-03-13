FROM node:14

COPY action.sh /action.sh

ENTRYPOINT [ "/action.sh" ]
