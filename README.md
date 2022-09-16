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

- Edit your `/opt/rt5/etc/RT_SiteConfig.pm`

    Add this line:

        Plugin( 'RT::Site::Adventurehound' );

- Clear your mason cache

        rm -rf /opt/rt5/var/mason_data/obj

- Restart your webserver

# CUSTOMIZATIONS

This extension adds the following customizations:

- Custom logo and logo link url

# BUGS

Please report bugs at [GitHub Issues](https://github.com/renderorange/rt-site-adventurehound/issues).

# AUTHOR

Blaine Motsinger <blaine@renderorange.com>

# LICENSE AND COPYRIGHT

Copyright (c) 2022 Blaine Motsinger.

This is free software, licensed under:

    The GNU General Public License, Version 2, June 1991
