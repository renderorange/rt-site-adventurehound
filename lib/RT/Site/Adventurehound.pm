use strict;
use warnings;
package RT::Site::Adventurehound;

our $VERSION = '0.01';

=head1 NAME

RT-Site-Adventurehound

=head1 DESCRIPTION

Custom code and configuration for Adventurehound RT.

=head1 RT VERSION

Works with RT 5.0

=head1 INSTALLATION

=over

=item C<perl Makefile.PL>

=item C<make>

=item C<make install>

May need root permissions

=item Edit your F</opt/rt5/etc/RT_SiteConfig.pm>

Add this line:

    Plugin( 'RT::Site::Adventurehound' );

=item Clear your mason cache

    rm -rf /opt/rt5/var/mason_data/obj

=item Restart your webserver

=back

=head1 BUGS

Please report bugs at L<GitHub Issues|https://github.com/renderorange/rt-site-adventurehound/issues>.

=head1 AUTHOR

Blaine Motsinger E<lt>blaine@renderorange.comE<gt>

=head1 LICENSE AND COPYRIGHT

Copyright (c) 2022 Blaine Motsinger.

This is free software, licensed under:

    The GNU General Public License, Version 2, June 1991

=cut

1;
