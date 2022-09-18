# NAME

RT-Site-Adventurehound

# DESCRIPTION

Custom code and configuration for Adventurehound RT.

# RT VERSION

Works with RT 5.0

# INSTALLATION

- `perl Makefile.PL`
- `make`
- `make install`

    May need root permissions

- `make initdb`

    Only run this the first time you install this module.

    If you run this twice, you may end up with duplicate data in your database.

    If you are upgrading this module, check for upgrading instructions in case changes need to be made to your database.

- Edit your `/opt/rt5/etc/RT_SiteConfig.pm`

    Add this line:

        Plugin( 'RT::Site::Adventurehound' );

- Clear your mason cache

        rm -rf /opt/rt5/var/mason_data/obj

- Restart your webserver

# SYSTEM WIDE CHANGES

This extension adds the following system wide changes:

- Administrators group

    The `Administrators` group is added, with `SuperUser` right.

# CUSTOMIZATIONS

This extension adds the following customizations:

- Custom logo and logo link url

# OVERLAYS

This extension adds the following overlays:

- html/NoAuth/css/elevator-light/BeforeNav

    This overlay is from 5.0.3, patched with rt commit 512192c to fix main navigation overlap with custom logo.

# BUGS

Please report bugs at [GitHub Issues](https://github.com/renderorange/rt-site-adventurehound/issues).

# AUTHOR

Blaine Motsinger <blaine@renderorange.com>

# LICENSE AND COPYRIGHT

Copyright (c) 2022 Blaine Motsinger.

This is free software, licensed under:

    The GNU General Public License, Version 2, June 1991
