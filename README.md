GitLab in Docker
================

This Vagrant environment shows how to provision GitLab with [sameersbn's](https://github.com/sameersbn) containers

## Tools

This environment uses 3 Docker containers:

* sameersbn/gitlab [Docker Hub](https://hub.docker.com/r/sameersbn/gitlab) [GitHub](https://github.com/sameersbn/docker-gitlab)
* sameersbn/redis [Docker Hub](https://hub.docker.com/r/sameersbn/redis) [GitHub](https://github.com/sameersbn/docker-redis)
* sameersbn/postgresql [Docker Hub](https://hub.docker.com/r/sameersbn/postgresql) [GitHub](https://github.com/sameersbn/docker-postgresql)

As well as Puppet modules:

* garethr/docker [Forge](https://forge.puppetlabs.com/garethr/docker) [GitHub](https://github.com/garethr/garethr-docker)
* puppetlabs/apache
* puppetlabs/apt
* puppetlabs/concat
* puppetlabs/stdlib  

## Production notes

* Multiple instances would need multiple IP-adresses (because of SSH mainly)
* SSH has to be published directly: `-p 5.9.9.19:22:22`

## TODOs

* secure environment data into an environment_file
* secure /srv/docker to root-only

## LICENSE

    Copyright (c) 2016 Markus Frosch <markus.frosch@netways.de>
    Copyright (c) 2016 NETWAYS GmbH <info@netways.de>
    
    This program is free software; you can redistribute it and/or modify
    it under the terms of the GNU General Public License as published by
    the Free Software Foundation; either version 2 of the License, or
    (at your option) any later version.

    This program is distributed in the hope that it will be useful,
    but WITHOUT ANY WARRANTY; without even the implied warranty of
    MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
    GNU General Public License for more details.

    You should have received a copy of the GNU General Public License along
    with this program; if not, write to the Free Software Foundation, Inc.,
    51 Franklin Street, Fifth Floor, Boston, MA 02110-1301 USA.
