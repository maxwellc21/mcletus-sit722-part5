#!/bin/bash
docker build -t libraryreg.azurecr.io/book_catalog:latest ./book_catalog
docker build -t libraryreg.azurecr.io/inventory_management:latest ./inventory_management
