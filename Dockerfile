FROM alpine

RUN apk --no-cache add curl bash

COPY . .

RUN chmod +x filman.sh

CMD [ "./filman.sh" ]