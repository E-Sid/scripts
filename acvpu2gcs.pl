#!/usr/bin/perl

eval 'exec /usr/bin/perl -S $0 ${1+"$@"}'
    if $running_under_some_shell;
			# this emulates #! processing on NIH machines.
			# (remove #! line above if indigestible)

eval '$'.$1.'$2;' while $ARGV[0] =~ /^([A-Za-z_0-9]+=)(.*)/ && shift;
			# process any FOO=bar switches

$, = ' ';		# set output field separator
$\ = "\n";		# set output record separator

print 'This is AcVPU score and conversion to GCS score';
print '================================================';
{
    $IGNORECASE = 1;
}
print 'Is the patient Alert? [Y/N]';
while ($A ne 'Y' || $A ne 'N') {
    $A = <STDIN>;
    chomp($A);
    if ($A eq 'Y' || $A eq 'N') {
	last;
    }
    else {
	'Response is out of range, please answer Y for yes, and N for no';
    }
}
if ($A eq 'Y') {
    print 'The AVPU score is A (ALERT) the GCS score is 15/15';
    exit;
 }
elsif ($A eq 'N') {
  print 'Is the patient confused (new onset confuction)? [Y/N]';
  while ($C ne 'Y' || $C ne 'N') {
      $C = <STDIN>;
      chomp($C);
      if ($C eq 'Y' || $C eq 'N') {
  	last;
      }
      else {
  	'Response is out of range, please answer Y for yes, and N for no';
      }
  }
  if ($C eq 'Y') {
      print 'The AcVPU score is C (Confused) the GCS score is <15/15 (13-14/15)';
      exit;
   }
elsif ($C eq 'N') {
    print 'Is the patient verbally responsive? [Y/N]';
}
while ($V ne 'Y' || $V ne 'N') {
    $V = <STDIN>;
    chomp($V);
    if ($V eq 'Y' || $V eq 'N') {
	last;
    }
    else {
	'Response is out of range, please answer Y for yes, and N for no';
    }
}
if ($V eq 'Y') {
    print 'The AVPU score is V (VERBAL) the GCS score is 13/15';
{    exit;
 }
}
elsif ($V eq 'N') {
    print 'Is the patient responsive to painful stimuli? [Y/N]';
}
while ($P ne 'Y' || $P ne 'N') {
    $P = <STDIN>;
    chomp($P);
    if ($P eq 'Y' || $P eq 'N') {
	last;
    }
    else {
	'Response is out of range, please answer Y for yes, and N for no';
    }
}
if ($P eq 'Y') {
    print 'The AVPU score is P (Pain) the GCS score is 8/15';
    exit;
}
elsif ($P eq 'N') {
    print 'The patient is possibly unresponsive.';
}
{ print 'AVPU score is U (Unresponsive) the GCS is 3/15';

last;
}
#{
#exit $ExitValue;
#}
#sub readline {
#    if ($getline_ok = (($_ = <>) ne '')) {
#	;
#    }
#    $_;
}
