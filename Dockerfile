# Simple Dockerfile for development
FROM registry.fedoraproject.org/fedora:42

# Install Node.js 22 and git
RUN dnf install -y nodejs npm git && dnf clean all

WORKDIR /app

# Clone the repository
RUN git clone https://github.com/Burhanverse/postify.git .

# Install dependencies
RUN npm install

# Run development server
CMD ["npm", "run", "dev"]
