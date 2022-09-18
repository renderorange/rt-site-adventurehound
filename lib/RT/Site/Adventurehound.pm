use strict;
use warnings;
package RT::Site::Adventurehound;

our $VERSION = '0.02';

=pod

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

=item C<make initdb>

Only run this the first time you install this module.

If you run this twice, you may end up with duplicate data in your database.

If you are upgrading this module, check for upgrading instructions in case changes need to be made to your database.

=item Edit your F</opt/rt5/etc/RT_SiteConfig.pm>

Add this line:

    Plugin( 'RT::Site::Adventurehound' );

=item Clear your mason cache

    rm -rf /opt/rt5/var/mason_data/obj

=item Restart your webserver

=back

=head1 SYSTEM WIDE CHANGES

This extension adds the following system wide changes:

=over

=item * Administrators group

The C<Administrators> group is added, with C<SuperUser> right.

=back

=head1 CUSTOMIZATIONS

This extension adds the following customizations:

=over

=item * Custom logo and logo link url

=cut

RT->Config->Set( 'LogoURL', '/static/images/adventurehound.png' );
RT->Config->Set( 'LogoLinkURL', 'https://adventurehound.io' );

=pod

=back

=head1 OVERLAYS

This extension adds the following overlays:

=over

=item * html/NoAuth/css/elevator-light/BeforeNav

This overlay is from 5.0.3, patched with rt commit 512192c to fix main navigation overlap with custom logo.

=item * html/Elements/ShowTransactionAttachments

=item * static/css/elevator-dark/main.css

=item * static/css/elevator-light/history.css

These overlays are from 5.0.3, patched with rt commit 7888a6d to remove attachment/filename icons from transactions.

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
