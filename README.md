# NAME

RT-Site-Adventurehound

# DESCRIPTION

Custom code and configuration for Adventurehound RT.

# RT VERSION

Works with RT 5.0

This extension includes patched files from RT 5.0.3.  Installation is minimally limited to 5.0.3, but allows newer versions of RT.

If installing on an RT newer than 5.0.3, the patched overlays may be out of date with changes in that version of RT.

# INSTALLATION

- `perl Makefile.PL`
- `make`
- `make install`

    May need root permissions

- Edit your `/opt/rt5/etc/RT_SiteConfig.pm`

    Add this line:

        Plugin( 'RT::Site::Adventurehound' );

- Clear your mason cache

        rm -rf /opt/rt5/var/mason_data/obj

- `make initdb`

    Only run this the first time you install this module.

    If you run this twice, you may end up with duplicate data in your database.

    If you are upgrading this module, check for upgrading instructions in case changes need to be made to your database.

- Restart your webserver

# SYSTEM WIDE CHANGES

This extension adds the following system wide changes:

- Administrators group

    The `Administrators` group is added, with `SuperUser` right.

# CUSTOMIZATIONS

This extension adds the following customizations:

- Custom logo and logo link url
- Custom CSS stylesheet

# OVERLAYS

This extension adds the following overlays:

- html/NoAuth/css/elevator-light/BeforeNav
- html/Elements/ShowTransactionAttachments
- static/css/elevator-dark/main.css
- static/css/elevator-light/history.css
- static/css/elevator-light/layout.css

    These overlays are from 5.0.3, patched with the following RT commits:

        512192c - Fix main navigation overlap with custom logo
        7888a6d - Remove attachment/filename icons from transactions
        0086ec8 - Lighten action buttons in ticket history
        3a6cbf0 - Lighten border colors for history and header

# BUGS

Please report bugs at [GitHub Issues](https://github.com/renderorange/rt-site-adventurehound/issues).

# AUTHOR

Blaine Motsinger <blaine@renderorange.com>

# LICENSE AND COPYRIGHT

Copyright (c) 2022 Blaine Motsinger.

This is free software, licensed under:

    The GNU General Public License, Version 2, June 1991
