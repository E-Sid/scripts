#!/usr/bin/perl
eval 'exec /usr/bin/perl -S $0 ${1+"$@"}'
    if $running_under_some_shell;
			# this emulates #! processing on NIH machines.
			# (remove #! line above if indigestible)

eval '$'.$1.'$2;' while $ARGV[0] =~ /^([A-Za-z_0-9]+=)(.*)/ && shift;
			# process any FOO=bar switches

#/usr/bin/awk -f

$, = ' ';		# set output field separator
$\ = "\n";		# set output record separator

print 'This is from the WHO mhGAP (v2) dementia algorithm';
print '==================================================';
print '1. Assess for signs of dementia';
print 'Are there problems with memory and/or orientation? [Y/N]';
while ($D1 ne 'Y' || $D1 ne 'N') {
    $D1 = <STDIN>;
    chomp($D1);
    if ($D1 eq 'Y' || $D1 eq 'N') {
	last;
    }
    else {
	print 'out of range';
    }
}
if ($D1 eq 'N') {
    print

      'Dementia is unlikely screen for other Mental, Neurological and substance use disorders (MNS)';
    exit;
}
elsif ($D1 eq 'Y') {
    print

      'Does the person have difficulties in performing key roles/activities? [Y/N]';
}
while ($D2 ne 'Y' || $D2 ne 'N') {
    $D2 = <STDIN>;
    chomp($D2);
    if ($D2 eq 'Y' || $D2 eq 'N') {
	last;
    }
    else {
	print 'out of range';
    }
}
if ($D2 eq 'N') {
    print

      'Dementia is unlikely screen for other Mental, Neurological and substance use disorders (MNS)';
    exit;
}
if ($D2 eq 'Y') {
    print '2. Are there any other explanations for the symptoms?';
}
print

  'Have the symptoms been present and slowly progressing for at least 6 months [Y/N]';
while ($D3 ne 'Y' || $D3 ne 'N') {
    $D3 = <STDIN>;
    chomp($D3);
    if ($D3 eq 'Y' || $D3 eq 'N') {
	last;
    }
    else {
	print 'out of range';
    }
}
if ($D3 eq 'N') {
    print 'Are there any of the following? [Y/N]';
    print '- Abrupt onset?';
    print '- Short duration (days to weeks)';
    print

      '- Disturbance at night andf associate with impairment of consciousness';
    print '- Disorientation of time and place';
    while ($D4 ne 'Y' || $D4 ne 'N') {
	$D4 = <STDIN>;
	chomp($D4);
	if ($D4 eq 'Y' || $D4 eq 'N') {
	    last;
	}
	else {
	    print 'out of range';
	}
    }
    if ($D4 eq 'Y') {
	print 'Suspect DELIRIUM';
	print ' - Obtain urinalysis';
	print

	  ' - Review medications, particularly those with significant anti-cholinergic side effects ( such as antidepressants, many anithistamines, and antipsychotics';
	print ' - Evaluate for pain';
	print

	  ' - Evaluate nutritional status, consider vitamin defeciency, or electrolyte abnormality';
	print

	  ' - Restart the algorithm, if symptoms persisted after addressing these issues';

	exit;
    }
    elsif ($D4 eq 'N') {
	print 'Does the person have moderate to severe DEPRESSION? [Y/N]';
    }
}

elsif ($D3 eq 'Y') {
    print 'Does the person have moderate to severe DEPRESSION? [Y/N]';
}
while ($D5 ne 'Y' || $D5 ne 'N') {
    $D5 = <STDIN>;
    chomp($D5);
    if ($D5 eq 'Y' || $D5 eq 'N') {
	last;
    }
    else {
	print 'out of range';
    }
}
if ($D5 eq 'Y') {
    print ' - Manage Depression ';
    print

      ' = Once treated for depression, review criteria for dementia. Go to step 1 ';
    exit;
}
elsif ($D5 eq 'N') {
    print 'Suspect DEMENTIA';
}
print '3. Evalue for other medical issues';
print 'Does the person have ANY of the following? [Y/N]';
print ' - Less than 60 years old priot to symptom onset';
print

  ' - Onset of symptoms associated with head injury, stroke, or altered or loss of consciousness ';
print ' - Clinical history of goitre, slow pulse, dry skin (hypothyroidism) ';
print ' - History of sexually transmitted infection (STI) including HIV/AIDS';
while ($D6 ne 'Y' || $D6 ne 'N') {
    $D6 = <STDIN>;
    chomp($D6);
    if ($D6 eq 'Y' || $D6 eq 'N') {
	last;
    }
    else {
	print 'out of range';
    }
}
if ($D6 eq 'Y') {
    print 'Unusual features';
    print 'Refer to specialist';
    exit;
}
elsif ($D6 eq 'N') {
    print

      'Does the person have poor dietary intake, malnutrition, or anaemia [Y/N]';
}
while ($D7 ne 'Y' || $D7 ne 'N') {
    $D7 = <STDIN>;
    chomp($D7);
    if ($D7 eq 'Y' || $D7 eq 'N') {
	last;
    }
    else {
	print 'out of range';
    }
}
if ($D7 eq 'Y') {
    print '- Fortification of food and monitoring of weight if necessary';
    print ' ';
}
if ($D7 eq 'Y' || $D7 eq 'N') {
    print 'Does the person have cardiovascular risk factors? [Y/N]';
    print '- Hypertension';
    print '- High cholesterol';
    print '- Diabetes';
    print '- Smoking';
    print '- Obesity';
    print '- Heart disease (chest pain, heart attack)';
    print '- Previous stroke or transient ischaemic attack (TIA)';
}
while ($D8 ne 'Y' || $D8 ne 'N') {
    $D8 = <STDIN>;
    chomp($D8);
    if ($D8 eq 'Y' || $D8 eq 'N') {
	last;
    }
    else {
	print 'out of range';
    }
}
if ($D8 eq 'Y') {
    print ' Refer to appropriate specialist';
    print ' ';
    print ' Reduce cardiovascular risk factors';
    print ' - Advise person to stop smoking ';
    print ' - Treat hypertension ';
    print ' - Advise weight-reducing diet for obesity ';
    print ' - Treat diabetes ';
    print ' ';
}
if ($D8 eq 'N') {
    print '4. Evaluate the needs of the carers';
}
print 'Is the carer having difficulty coping or experiencing strain? [Y/N]';
while ($D9 ne 'Y' || $D9 ne 'N') {
    $D9 = <STDIN>;
    chomp($D9);
    if ($D9 eq 'Y' || $D9 eq 'N') {
	last;
    }
    else {
	print 'out of range';
    }
}
if ($D9 eq 'Y') {
    print

      'Explore psychosocial interventions about respite care, activation of community support network, and family/individual therapy, if available';
}
elsif ($D9 eq 'Y' || $D9 eq 'N') {
    print 'Is the carer experiencing depressed mood? [Y/N]';
}
while ($D10 ne 'Y' || $D10 ne 'N') {
    $D10 = <STDIN>;
    chomp($D10);
    if ($D10 eq 'Y' || $D10 eq 'N') {
	last;
    }
    else {
	print 'out of range';
    }
}
if ($D10 eq 'Y') {
    print 'For assessment of depression in care, go to DEP module';
    print

      'Try to address strain with support and psychoeducation, problem solving or cognitive-behavioural therapy';
}
elsif ($D10 eq 'Y' || $D10 eq 'N') {
    print

      'Is the carer facing loss of income and/or additional expenses because of the needs for care? [Y/N]';
}
while ($D11 ne 'Y' || $D11 ne 'N') {
    $D11 = <STDIN>;
    chomp($D11);
    if ($D11 eq 'Y' || $D11 eq 'N') {
	last;
    }
    else {
	print 'out of range';
    }
}
if ($D11 eq 'Y') {
    print

      'Explore local financial support options, such as disability services';
    print ' ';
}
if ($D11 eq 'Y' || $D11 eq 'N') {
    print

      '5. Does the person have ANY of the following BEHAVIOURAL or PSYHCOLOGICAL symptoms of dementia?';
}
while ($D12 ne 'Y' || $D12 ne 'N') {
    $D12 = <STDIN>;
    chomp($D12);
    if ($D12 eq 'Y' || $D12 eq 'N') {
	last;
    }
    else {
	print 'out of range';
    }
}
if ($D12 eq 'Y' || $D12 eq 'N') {
    print

      'IF THERE IS IMMINENT RISK OF SUICIDE. ASSESS AND MANAGE before continuing to protocol. Go to SUICIDE protocol';
}
print

  'Pleasem, Go to treatment protocol. please, visit the World Healt Organization mhGAP intervention Guide version 2';
print 'Please, visit https://www.who.int/publications/item/9789241549790';

exit;

sub readline {
    if ($getline_ok = (($_ = <>) ne '')) {
	;
    }
    $_;
}
