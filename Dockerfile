FROM docker.n8n.io/n8nio/n8n:latest

# Install required npm packages into the n8n data directory so they are resolved by Code nodes
USER node
ENV NPM_CONFIG_PREFIX=/home/node/.n8n
ENV NODE_PATH=/home/node/.n8n/lib/node_modules
RUN npm install --omit=dev @aws-sdk/client-s3 @aws-sdk/lib-storage
