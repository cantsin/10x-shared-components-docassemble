# Exploring docassemble and directus

The phrase of the week is "declarative episodic data collection and validation."

* **declarative** meaning we only want to express what data we want to collect, and we want the mechanism to collect (and validate) it to be generated from that declaration.
* **episodic** meaning the collection happens as discrete events on some schedule, as opposed to being a live/ongoing service.

## docassemble

docassemble is a tool for declaring an "interview" via YAML, and from that YAML a web service is generated to collect data from "clients." The original itch being scratched was in the context of law. However, it looks (so far) like a tool for specifying multi-step surveys. Kinda.

directus is a headless CMS. What makes it interesting is (first) that it is not so much *content* driven as *data* driven. It provides a nifty web-based UI for creating and managing databases, has a management API for doing everything you might do in the web UI, and (this is the fun part) will expose tables that you create (or are pre-existing) via a REST or GraphQL API. 

So, the thought here was:

* Can we use docassemble to create a simple data ingestion survey, and 
* Use it to collect data via the web UI, but also
* Use directus to provide an API-based interface to do the same work, or to further manage the data.

It is possible that docassemble has this already (because it is a Flask backend), but for now, we're bringing all the hammers to the party. 

docassemble comes up on [localhost:8000](http://localhost:8000/), and directus on [localhost:8055](http://localhost:8055/). 


docassemble can be managed via 

* username: admin@admin.com
* password: password

and directus with

* username: 10x@gsa.gov
* password: 10x

These should **only** be run locally, as they have absolutely no security associated with them. **This is a local-docker-only exploration**.
