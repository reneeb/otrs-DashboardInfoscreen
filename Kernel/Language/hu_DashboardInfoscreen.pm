# --
# Kernel/Language/hu_DashboardInfoscreen.pm - the Hungarian translation of DashboardInfoscreen
# Copyright (C) 2015 - 2016 Perl-Services, http://www.perl-services.de
# Copyright (C) 2016 Balázs Úr, http://www.otrs-megoldasok.hu
# --
# This software comes with ABSOLUTELY NO WARRANTY. For details, see
# the enclosed file COPYING for license information (AGPL). If you
# did not receive this file, see http://www.gnu.org/licenses/agpl.txt.
# --

package Kernel::Language::hu_DashboardInfoscreen;

use strict;
use warnings;

use utf8;

sub Data {
    my $Self = shift;

    my $Lang = $Self->{Translation} || {};

    # Kernel/Config/Files/DashboardInfoscreen.xml
    $Lang->{'Change ticket mask.'} = 'Jegymaszk megváltoztatása.';
    $Lang->{'Defines the config parameters of this item, to be shown in the preferences view.'} =
        'Meghatározza ennek az elemnek a beállítási paramétereit, amelyeket meg kell jeleníteni a beállítások nézetben.';
    $Lang->{'Hide Sidebar in Dashboard'} = 'Oldalsáv elrejtése a vezérlőpulton';
    $Lang->{'Hide Sidebar'} = 'Oldalsáv elrejtése';
}

1;
