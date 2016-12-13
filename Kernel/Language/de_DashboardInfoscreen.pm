# --
# Kernel/Language/de_DashboardInfoscreen.pm - the German translation of DashboardInfoscreen
# Copyright (C) 2015 - 2016 Perl-Services, http://www.perl-services.de
# --
# This software comes with ABSOLUTELY NO WARRANTY. For details, see
# the enclosed file COPYING for license information (AGPL). If you
# did not receive this file, see http://www.gnu.org/licenses/agpl.txt.
# --

package Kernel::Language::de_DashboardInfoscreen;

use strict;
use warnings;

use utf8;

sub Data {
    my $Self = shift;

    my $Lang = $Self->{Translation} || {};

    # Kernel/Config/Files/DashboardInfoscreen.xml
    $Lang->{'Change ticket mask.'} = '';
    $Lang->{'Defines the config parameters of this item, to be shown in the preferences view.'} = '';
    $Lang->{'Hide Sidebar in Dashboard'} = 'Dashboard-Seitenleiste verstecken';
    $Lang->{'Hide Sidebar'} = 'Seitenleiste verstecken';
}

1;
