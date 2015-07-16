# --
# Kernel/Output/HTML/OutputFilterDashboardHideSidebar.pm
# Copyright (C) 2015 Perl-Services.de, http://www.perl-services.de/
# --
# This software comes with ABSOLUTELY NO WARRANTY. For details, see
# the enclosed file COPYING for license information (AGPL). If you
# did not receive this file, see http://www.gnu.org/licenses/agpl.txt.
# --

package Kernel::Output::HTML::OutputFilterDashboardHideSidebar;

use strict;
use warnings;

use List::Util qw(first);

our @ObjectDependencies = qw(
    Kernel::Config
    Kernel::System::Web::Request
    Kernel::System::User
    Kernel::Output::HTML::Layout
);

sub new {
    my ( $Type, %Param ) = @_;

    # allocate new hash for object
    my $Self = {};
    bless( $Self, $Type );

    $Self->{UserID} = $Param{UserID};

    return $Self;
}

sub Run {
    my ( $Self, %Param ) = @_;

    my $ParamObject = $Kernel::OM->Get('Kernel::System::Web::Request');
    my $Action      = $ParamObject->GetParam( Param => 'Action' ) || 'AgentDashboard';

    # get template name
    return 1 if !first { $Action eq $_ }keys %{$Param{Templates}};

    my $ConfigObject = $Kernel::OM->Get('Kernel::Config');
    my $UserObject   = $Kernel::OM->Get('Kernel::System::User');

    my %Preferences  = $UserObject->GetPreferences(
        UserID => $Self->{UserID},
    );

    return if !$Preferences{DashboardHideSidebar};

    my $JS = qq~
<script type="text/javascript">//<![CDATA[
    \$(".SidebarColumn").hide();
//]]></script>
    ~;

    ${ $Param{Data} } =~ s{
        </body>
    }{
        $JS
        </body>
    }xms;

    return ${ $Param{Data} };
}

1;
