# Before `make install' is performed this script should be runnable with
# `make test'. After `make install' it should work as `perl 1.t'

#########################

# change 'tests => 1' to 'tests => last_test_to_print';

use Test::More tests => 8;
BEGIN { use_ok('Acme::Spinner') };

#########################

# Insert your test code below, the Test::More module is use()ed here so read
# its man page ( perldoc Test::More ) for help writing this test script.

my $s = Acme::Spinner->new();

ok( defined($s), 'made a spinner');

is( $s->next(), '|', 'first');
is( $s->next(), '\\', 'second');

my $t = Acme::Spinner->new( 5, 10 );

is($t->y(), 5, 'y property');
is($t->x(), 10, 'x property');

ok($t->y(40), 'set y property');
is($t->y(), 40, 'get y property');
