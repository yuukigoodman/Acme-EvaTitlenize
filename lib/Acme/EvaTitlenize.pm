package Acme::EvaTitlenize;
use 5.008005;
use strict;
use warnings;
use utf8;

use Text::VisualWidth::UTF8;

our $VERSION = "0.01";

sub lower_left {
    my ($left, $low) = @_;

    my $evanize;

    $evanize .= join "\n", split //, $left;
    $evanize .= $low;

    return $evanize;
}

sub upper_right {
    my ($up, $right) = @_;

    my $space = ' ' x Text::VisualWidth::UTF8::width($up);
    my $evanize = $up;

    $evanize .= join "\n$space", split //, $right;

    return $evanize;
}

1;

__END__

=encoding utf-8

=head1 NAME

Acme::EvaTitlenize - Let's generate title like Evangelion

=head1 SYNOPSIS

  $ evatitlenize -j 使 -l 徒、襲来
  使    
  徒、襲来

=head1 DESCRIPTION

Acme::EvaTitlenize generate text like title of Evangelion animation.    

-j makes a text vertically.  

-l makes a text horizontally.

=head1 LICENSE

Copyright (C) Yuuki Tan-nai.

This library is free software; you can redistribute it and/or modify
it under the same terms as Perl itself.

=head1 AUTHOR

Yuuki Tan-nai E<lt>yuki.tannai@gmail.comE<gt>

=cut

