package RT::CustomFieldValues::Development::Project;

use strict;
use warnings;

use base qw(RT::CustomFieldValues::External);

sub SourceDescription {
    return 'Development Projects';
}

sub ExternalValues {
    my $self = shift;

    return [
        {
            name      => 'rt.adventurehound.io',
            sortorder => 0,
        },
    ];
}

RT::Base->_ImportOverlays();

1;
