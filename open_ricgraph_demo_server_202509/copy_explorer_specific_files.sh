#!/bin/bash
# Copy files specific for the Open Ricgraph demo server
# to their correct place.
# The files are assumed to be in /opt.
# The demo server is expected to be in /opt/ricgraph_venv.
# No error checking is done.
# Rik D.T. Janssen, November 3, 2026

cp homepage_intro.html-open-ricgraph-demo-server ricgraph_venv/ricgraph_explorer/static/homepage_intro.html 
cp homepage_outro.html-open-ricgraph-demo-server ricgraph_venv/ricgraph_explorer/static/homepage_outro.html 
cp ricgraph.ini-open-ricgraph-demo-server-explorer ricgraph_venv/ricgraph.ini

