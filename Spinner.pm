package Acme::Spinner;

use 5.008;
use strict;
use warnings;

our $VERSION = '0.02';

sub new {
    my $class = shift;
    $class = ref($class) || $class;
    my $self = {};
    $self->{y}     = shift;
    $self->{x}     = shift;
    $self->{count} = 0;
    $self->{seq}   = '|\\-/';

    return bless( $self, $class );
}

sub next {
    my $self = shift;
    my $f = $self->{seq};
    my $t = substr( $f, $self->{count} % length($f), 1 );
    $self->{count}++;

    return ($t);
}

sub x {
    my $self = shift;
    my $o = $self->{x};

    if (defined $_[0]) {
        $self->{x} = $_[0];
    }
    return $o;
}

sub y {
    my $self = shift;
    my $o = $self->{y};

    if (defined $_[0]) {
        $self->{y} = $_[0];
    }
    return $o;
}

# Preloaded methods go here.

1;
__END__
# Below is stub documentation for your module. You'd better edit it!

=head1 NAME

Acme::Spinner - Perl extension for blah blah blah

=head1 SYNOPSIS

    use Acme::Spinner;
    my $s = Acme::Spinner->new();
    while(<>) {
	print STDERR $s->next(), "\r";
    } 

=head1 ABSTRACT

This is a simple module that helps manage one of those silly spinning
bar things that some programs use when they want you to think they
are busy.

=head1 DESCRIPTION

Some programs take a long time to do some functions.  Sometimes
people are get confused about what is happening and start pressing
buttons in an effort to illicit some response while a program is
taking a long time.  Strangely enough if the program gives the
person using it something to watch while it is busy with other work
the person is much more likely to leave the program alone so that
can finish its work. 

=head1 METHODS

=over 4

=item  B< new >

The creator. It can be used to initialize the y and x properties.

=item B< y >

Access method for the y property.

=item B< x >

Access method for the x property.

=head1 SEE ALSO

perl(1)

=head1 BUGS

I'm sure there must be several.  Please help me find them.

=head1 AUTHOR

Chris Fedde, E<lt>cfedde@littleton.co.usE<gt>

=head1 COPYRIGHT AND LICENSE

Copyright 2003 by Chris Fedde

This version of this library is granted to the public domain.

=cut
