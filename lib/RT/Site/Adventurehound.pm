use strict;
use warnings;
package RT::Site::Adventurehound;

our $VERSION = '0.03';

=pod

=head1 NAME

RT-Site-Adventurehound

=head1 DESCRIPTION

Custom code and configuration for Adventurehound RT.

=head1 RT VERSION

Works with RT 5.0

This extension includes patched files from RT 5.0.3.  Installation is minimally limited to 5.0.3, but allows newer versions of RT.

If installing on an RT newer than 5.0.3, the patched overlays may be out of date with changes in that version of RT.

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

=item C<make initdb>

Only run this the first time you install this module.

If you run this twice, you may end up with duplicate data in your database.

If you are upgrading this module, check for upgrading instructions in case changes need to be made to your database.

=item Restart your webserver

=back

=head1 SYSTEM WIDE CHANGES

This extension adds the following system wide changes:

=over

=item * Administrators group

The C<Administrators> group is added, with C<SuperUser> right.

=item * Development queue

=item * CustomFields

The following custom fields are added:

For the Development queue:

=over

=item * Organization

=item * Project

=back

=item * CustomFieldValues sources

Custom field values are loaded from the following sources:

=over

=item * RT::CustomFieldValues::Development::Organization

=item * RT::CustomFieldValues::Development::Project

=cut

RT->Config->Set( 'CustomFieldValuesSources',
                 'RT::CustomFieldValues::Development::Organization',
                 'RT::CustomFieldValues::Development::Project',
);

RT->Config->Set( 'CustomFieldGroupings',
    'RT::Ticket' => {
        'Development' => [
            'Details' => [ 'Organization', 'Project', ],
        ],
    },
);

=pod

=back

=back

=head1 CUSTOMIZATIONS

This extension adds the following customizations:

=over

=item * Custom logo and logo link url

=cut

RT->Config->Set( 'LogoURL', '/static/images/adventurehound.png' );
RT->Config->Set( 'LogoLinkURL', 'https://adventurehound.io' );

=pod

=item * Custom CSS stylesheet

=cut

RT->AddStyleSheets( 'rt-site-adventurehound.css' );

=pod

=back

=head1 OVERLAYS

This extension adds the following overlays:

=over

=item * html/NoAuth/css/elevator-light/BeforeNav

=item * html/Elements/ShowTransactionAttachments

=item * static/css/elevator-dark/main.css

=item * static/css/elevator-light/history.css

=item * static/css/elevator-light/layout.css

These overlays are from 5.0.3, patched with the following RT commits:

    512192c - Fix main navigation overlap with custom logo
    7888a6d - Remove attachment/filename icons from transactions
    0086ec8 - Lighten action buttons in ticket history
    3a6cbf0 - Lighten border colors for history and header

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
