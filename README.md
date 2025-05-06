# n8n Workflow Automation Stack

This repository contains a Docker Compose configuration for running n8n workflow automation tool with PostgreSQL database and Redis queue.

## Components

- **n8n**: Main workflow automation engine
- **PostgreSQL**: Database for storing workflow data
- **Redis**: Queue system for workflow execution
- **n8n Worker**: Additional worker instance for processing queued workflows

## Quick Deployment

1. Go to Coolify dashboard
2. Click "Add Service"
3. Choose "Public Repository" as the source
4. Enter this repository URL
5. Configure the following environment variables as needed:
   - `SERVICE_USER_POSTGRES`: PostgreSQL username
   - `SERVICE_PASSWORD_POSTGRES`: PostgreSQL password 
   - `POSTGRES_DB`: Database name (defaults to n8n)
   - `REDIS_USERNAME`: Redis username (optional)
   - `SERVICE_PASSWORD_REDIS`: Redis password
   - `SERVICE_FQDN_N8N`: Your n8n instance domain
   - `SERVICE_URL_N8N`: URL for n8n host
   - `SERVICE_BASE64_ENCRYPTIONKEY`: Base64 encryption key for n8n
6. Deploy the stack

The services will be deployed with:
- n8n web interface accessible on port 5678
- PostgreSQL database for persistent storage
- Redis for queue management
- Separate n8n worker for processing queued workflows
