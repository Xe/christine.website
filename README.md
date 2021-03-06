My Site
=======

> "It's faster than PHP"

This is intended as my portfolio site or the like. This is a site made with
[lapis](http://leafo.net/lapis) and deployed on a server running
[dokku-alt](https://github.com/dokku-alt/dokku-alt) and runs inside the
[docker-lapis](https://github.com/Xe/docker-lapis) container. It also has a copy
of [OlegDB](http://olegdb.org) running to cache API requests from GitHub. This
cache is cleared on every deploy, as well as keys expiring after 6 hours.

License
-------

    Copyright (C) 2015 Christine Dodrill <me@christine.website> All rights
    reserved.

    This software is provided 'as-is', without any express or implied
    warranty. In no event will the authors be held liable for any damages
    arising from the use of this software.

    Permission is granted to anyone to use this software for any purpose,
    including commercial applications, and to alter it and redistribute it
    freely, subject to the following restrictions:

    1. The origin of this software must not be misrepresented; you must not
    claim that you wrote the original software. If you use this software
    in a product, an acknowledgment in the product documentation would be
    appreciated but is not required.

    2. Altered source versions must be plainly marked as such, and must not be
    misrepresented as being the original software.

    3. This notice may not be removed or altered from any source
    distribution.

The theming of this site is based off of Twitter's Bootstrap as well as
a modified version of the Readable theme.

RSS Feed
--------

I have an [RSS feed](https://christine.website/blog.rss) for my blog entries. It
generates the needed XML by hand using [this template](https://github.com/Xe/christine.website/blob/master/views/blog/rss.moon).
