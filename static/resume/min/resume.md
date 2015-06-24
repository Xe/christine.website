# Christine Dodrill

#### Email
me@christine.website

#### Phone
+1 425.221.7761

### Rockstar Hacker, Gopher, Cloud Architect

http://github.com/Xe

Skills
------

- Go, Moonscript, Lua, Python, C, Nim
- Docker deployments
- `git`-centric project management
- Research and Development for new ways to do things
- 800+ machine orchestration and deployment management

Operating Systems
-----------------

- Alpine Linux
- CentOS
- CoreOS
- Debian
- Fedora
- Gentoo
- Ubuntu

Work
----

###  [IMVU](http://imvu.com)
#### Site Reliability Engineer

2015-03-30 thru today

IMVU, inc is a company whose mission is to help people find and communicate
with eachother. Their main product is a 3D avatar-based chat client and its
surrounding infrastructure allowing creators to make content for the avatars
to wear.

##### Highlights

- Wrote up technical designs
- Implemented technical designs on an over 800 machine cluster
- Continuous learning of a lot of very powerful systems and improving upon them
when it is needed

###  [VTCSecure](http://www.vtcsecure.com)
#### Deis Consultant (Contract)

2014-10-27 thru 2015-01-15

VTCSecure is a company dedicated to helping with custom and standard
audio/video confrencing solutions. They specialize in helping the deaf and
blind communicate over today's infrastructure without any trouble on their end.

##### Highlights

- Started groundwork for a dynamically scalable infrastructure on a project for
helping the blind see things
- Developed a prototype of a new website for VTCSecure
- Education on best practices using Docker and CoreOS
- Learning Freeswitch

###  [CrowdFlower](http://crowdflower.com)
#### Deis Consultant (Contract)

2014-09-10 thru 2014-10-15

Crowdflower is a company that uses crowdsourcing to have its customers submit
tasks to be done, similar to Amazon's Mechanical Turk. CrowdFlower has over 50
labor channel partners, and its network has more than 5 million contributors
worldwide.

##### Highlights

- Research and development on scalable Linux deployments on AWS via CoreOS and
Docker
- Development of in-house tools to speed instance creation
- Laid groundwork on the creation and use of better tools for managing large
clusters of CoreOS and Fleet machines

###  [OpDemand](http://opdemand.com)
#### Software Engineering Intern

2014-07-14 thru 2014-08-27

OpDemand is the company behind the open source project Deis, a distributed
platform-as-a-service (PaaS) designed from the ground up to emulate Heroku but
on privately owned servers.

##### Highlights

- Built new base image for Deis components
- Research and development on a new builder component

Side Projects
-------------

- Programming, administration and orchestration of complicated, multi-tenant
IRC networks.
- Mitigation of active attacks against IRC networks and creation of sane tools
to make future mitigation easier
- Design and implementation of next generation services and administrative
tools for IRC networks
- Research and development of new container-based scalable deployment systems

### Project Details

#### [Elemental-IRCd](https://github.com/Elemental-IRCd/elemental-ircd)

A scalable RFC compliant IRCv3 enabled IRC server for personal and professional
use.

##### Accomplishments

- Automated builds to the docker hub on every commit and release
  https://registry.hub.docker.com/u/xena/elemental-ircd/
- Orchestration tools for automating server setup (pre-docker)
  https://github.com/Elemental-IRCd/oline-gangnam-style

Elemental is currently in use in production on several networks, totaling
800-1000 users per day with spikes of up to 50,000 on special events.

#### [Cod](https://github.com/cod-services/cod)

A set of extended services for IRC networks written from scratch and released
for public use under the terms of the Zlib license.

##### Accomplishments

- Completely modular setup with dynamic loading and unloading of services
- Automated script for setting up its environment as part of starting Cod
  https://github.com/cod-services/cod/blob/master/cod

Cod is currently in use in production on a network with over 300 people daily.

#### [Tetra](https://github.com/Xe/Tetra)

Cod's next generation replacement written from scratch in Go with Lua for
scripting.

##### Accomplishments

- Parallel execution of handlers and scripts
- Moonscript -> Lua transpiling support
- A clean, declarative domain-specific language for declaring features or bot
commands:

```
Command "PING", ->
  "PONG"
```

This will create a command named "PING" that will return "PONG" to the user
when it is used.

Tetra is currently in a development state, but it is in use on several networks
and does not serve more than 300 users daily.

#### [Flitter](https://github.com/Xe/flitter)

Flitter is an experimental from-scratch platform as a service implemented in Go
that runs on top of CoreOS and Fleet, building Docker containers on a git push
to its builder ssh server. It is a combination of the Heroku workflow with
a pure docker environment. It currently is in a mostly working state, with
things such as old applications being purged as new ones are started not yet
implemented due to time constraints. It is intended to be built such that it is
completely scalable from one server to any number of servers. There is an
example video of a deployed application linked in the readme of Flitter.

### Personal Hosting

I use Dokku-alt for hosting my websites. A lot of my websites are written in
such a way that they meld seamlessly with parts of the stack and are able to
build themselves on deployment. See [this 
Dockerfile](https://github.com/Xe/dockerfiles/blob/108bf84d96b5b34db4f19e928d89354f66abc398/dev/lapis-ultimate/Dockerfile)
 or an
example of this.

### Personal Tools

I will release most (if not all) of the one-off tools I make into the public
domain when it makes sense to. The most recent tools I release into the public
domain will be here: https://github.com/Xe/tools


