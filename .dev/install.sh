#!/bin/bash

# gen ssl keys if not exist
if [ -f .dev/ssl.root.pem ]
then
  exit 0
else
  openssl req -x509 -nodes -new -sha256 -days 1024 -newkey rsa:2048 -keyout .dev/ssl.root.key -out .dev/ssl.root.pem -subj "/C=NL/CN=WAPP-CA"
  openssl x509 -outform pem -in .dev/ssl.root.pem -out .dev/ssl.root.crt
  openssl req -new -nodes -newkey rsa:2048 -keyout .dev/ssl.dev.key -out .dev/ssl.dev.csr -subj "/C=NL/O=WAPP-Certificates/CN=localhost"
  openssl x509 -req -sha256 -days 1024 -in .dev/ssl.dev.csr -CA .dev/ssl.root.pem -CAkey .dev/ssl.root.key -CAcreateserial -extfile .dev/domains.ext -out .dev/ssl.dev.crt
  echo ""
  echo "====================================================================="
  echo "Generated SSL keys and self-signed root CA in .dev/ssl.*"
  echo "---------------------------------------------------------------------"
  echo "Add these entries to your hosts file located at"
  echo "/etc/hosts"
  echo "C:\\Windows\\System32\\drivers\\etc\\hosts"
  echo ""
  echo "127.0.0.1   localhost"
  echo "127.0.0.1   dev.local"
  echo "127.0.0.1   eev.local"
  echo "---------------------------------------------------------------------"
  echo "Install the root CA .dev/ssl.root.crt on your local machine."
  echo ""
  echo "Windows:"
  echo "  * Double-click .dev/ssl.root.crt"
  echo "  * Install certificate in Trusted certificate authorities"
  echo "Mac OS:"
  echo "  * Use Keychain Access to add to the system keychain"
  echo ""
  echo "You will have to restart your browser for it to pick up the new"
  echo "root CA and trust your self-signed certificate"
  echo "====================================================================="
  echo ""
fi

# gen .env if not exist
if [ -f .env ]
then
  exit 0
else
  cp .dev/.env .env
  echo ""
  echo "====================================================================="
  echo "Copied .env from .dev/.env"
  echo "====================================================================="
  echo ""
fi
