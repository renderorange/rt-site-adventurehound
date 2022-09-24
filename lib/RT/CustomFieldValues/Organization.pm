package RT::CustomFieldValues::Organization;

use strict;
use warnings;

use base qw(RT::CustomFieldValues::External);

sub SourceDescription {
    return 'Development Organizations';
}

sub ExternalValues {
    my $self = shift;

    return [
        {
            name      => 'adventurehound',
            sortorder => 0,
        },
        {
            name      => 'renderorange',
            sortorder => 1,
        },
    ];
}

RT::Base->_ImportOverlays();

1;
