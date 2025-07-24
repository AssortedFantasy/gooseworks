# Setup Instructions

This document provides information for how to get the website up and running. In case I need to recreate it from scratch.

## Requirements

The site is running on an Ubuntu server using lighttpd. It uses Hugo for static site generation and Certbot for SSL certificates.

```
sudo apt update
sudo apt install lighttpd
sudo snap install --classic certbot
sudo snap install hugo
```

## Hugo Setup

```
hugo new site . --force
```


