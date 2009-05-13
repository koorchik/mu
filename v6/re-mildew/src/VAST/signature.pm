package VAST::signature;
use utf8;
use strict;
use warnings;
use AST::Helpers;

sub emit_m0ld_ahsig_with_invocant {
    my $m = shift;
    my @stmts;
    push @stmts, call BIND => (call 'postcircumfix:{ }' => reg '$scope',[string '$¿self']),[call positional => reg '$capture',[integer 0]];

    $m->emit_m0ld_ahsig(1,@stmts);
}
sub emit_m0ld_ahsig {
    my $m = shift;

    my $other = shift || 0;
    my @stmts = @_;

    # TODO invocant

    for my $param (@{$m->{parameter}}) {
        push @stmts, $param->emit_m0ld_ahsig_BIND($other);
        $other++;
    }

    AST::Call->new
        ( identifier => string 'new',
          capture => AST::Capture->new
          ( invocant => FETCH(lookup('AdhocSignature')),
            positional => [],
            named =>
            [ string 'BIND' => AST::Block->new
              ( regs => [qw(interpreter scope capture)],
                stmts => trailing_return(\@stmts))]));
}
1;
