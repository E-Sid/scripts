#/usr/bin/awk -f

BEGIN   {
    print "This is from the WHO mhGAP (v2) dementia algorithm"
    print "=================================================="
    print "1. Assess for signs of dementia"
    print "Are there problems with memory and/or orientation? [Y/N]"
    while ( D1 != "Y" || D1 != "N") {
    getline D1
    if (D1=="Y" || D1=="N")
    break
    else print "out of range"
    }    
      if (D1=="N")
      {  print "Dementia is unlikely screen for other Mental, Neurological and substance use disorders (MNS)"
	  exit 1 }
    else if (D1=="Y")
    print "Does the person have difficulties in performing key roles/activities? [Y/N]"
    while ( D2 != "Y" || D2 != "N") {
    getline D2
    if (D2=="Y" || D2=="N")
    break
    else print "out of range"
    }    
    if (D2=="N") {
	   print "Dementia is unlikely screen for other Mental, Neurological and substance use disorders (MNS)"
	   exit 2 }
    if (D2=="Y") 
    print "2. Are there any other explanations for the symptoms?"
    print "Have the symptoms been present and slowly progressing for at least 6 months [Y/N]"
    while ( D3 != "Y" || D3 != "N") {
    getline D3
    if (D3=="Y" || D3=="N")
    break
    else print "out of range"
    }    
    if (D3=="N") {
          print "Are there any of the following? [Y/N]"
	  print "- Abrupt onset?"
	  print "- Short duration (days to weeks)"
	  print "- Disturbance at night andf associate with impairment of consciousness"
	  print "- Disorientation of time and place"
	   while ( D4 != "Y" || D4 != "N") {
    getline D4
    if (D4=="Y" || D4=="N")
    break
    else print "out of range"
    }    
        if (D4=="Y") {
	  print "Suspect DELIRIUM"
      print " - Obtain urinalysis"
      print " - Review medications, particularly those with significant anti-cholinergic side effects ( such as antidepressants, many anithistamines, and antipsychotics"
      print " - Evaluate for pain"
      print " - Evaluate nutritional status, consider vitamin defeciency, or electrolyte abnormality"
	  print " - Restart the algorithm, if symptoms persisted after addressing these issues"

	 exit 3 }
	else if (D4=="N")
	print "Does the person have moderate to severe DEPRESSION? [Y/N]"    
    }
    
	else if (D3=="Y") 
	print "Does the person have moderate to severe DEPRESSION? [Y/N]"
       while ( D5 != "Y" || D5 != "N") {
    getline D5
    if (D5=="Y" || D5=="N")
    break
    else print "out of range"
    }    
       if (D5=="Y") {
	  print " - Manage Depression "
	  print " = Once treated for depression, review criteria for dementia. Go to step 1 "
	  exit 4 }
       else if (D5=="N")
	   print "Suspect DEMENTIA"
       print "3. Evalue for other medical issues"
       print "Does the person have ANY of the following? [Y/N]"
       print " - Less than 60 years old priot to symptom onset"
       print " - Onset of symptoms associated with head injury, stroke, or altered or loss of consciousness "
       print " - Clinical history of goitre, slow pulse, dry skin (hypothyroidism) "
       print " - History of sexually transmitted infection (STI) including HIV/AIDS"
        while ( D6 != "Y" || D6 != "N") {
    getline D6
    if (D6=="Y" || D6=="N")
    break
    else print "out of range"
    }    
      if (D6=="Y") {
      print "Unusual features"
      print "Refer to specialist"
      exit 5 }
      else if (D6=="N")
	  print "Does the person have poor dietary intake, malnutrition, or anaemia [Y/N]"
      while ( D7 != "Y" || D7 != "N" ) {
	  getline D7
	  if (D7=="Y" || D7=="N")
	      break
	  else print "out of range"
      }
      if (D7=="Y") { 
	  print "- Fortification of food and monitoring of weight if necessary"
	  print " "
      }
      if (D7=="Y" || D7=="N") {  
         print "Does the person have cardiovascular risk factors? [Y/N]"
	 print "- Hypertension"
	 print "- High cholesterol"
	 print "- Diabetes"
	 print "- Smoking"
	 print "- Obesity"
	 print "- Heart disease (chest pain, heart attack)"
	 print "- Previous stroke or transient ischaemic attack (TIA)"
      }
	 while ( D8 != "Y" || D8 != "N" ) {
	     getline D8
	  if (D8=="Y" || D8=="N")
	      break
	  else print "out of range"
      }
	 if (D8=="Y") {
	  print " Refer to appropriate specialist"
	  print " "
	  print " Reduce cardiovascular risk factors"
	  print " - Advise person to stop smoking "
	  print " - Treat hypertension "
	  print " - Advise weight-reducing diet for obesity "
	  print " - Treat diabetes "
	  print " "
	 }
	  if (D8=="N")
	      print "4. Evaluate the needs of the carers"
      	      print "Is the carer having difficulty coping or experiencing strain? [Y/N]"
	      while ( D9 != "Y" || D9 != "N") {
		  getline D9
		  if (D9=="Y" || D9=="N")
		      break
		  else print "out of range"
	      }
	      if (D9=="Y")
		  print "Explore psychosocial interventions about respite care, activation of community support network, and family/individual therapy, if available"
	      else if (D9=="Y" || D9=="N")
		  print "Is the carer experiencing depressed mood? [Y/N]"
	      while ( D10 != "Y" || D10 != "N" ) {
		      getline D10
		  if (D10=="Y" || D10=="N")
		      break
		  else print "out of range"
	      }
	      if (D10=="Y") {
		  print "For assessment of depression in care, go to DEP module"
		  print "Try to address strain with support and psychoeducation, problem solving or cognitive-behavioural therapy" }
		  else  if (D10=="Y" || D10=="N") 
		      print "Is the carer facing loss of income and/or additional expenses because of the needs for care? [Y/N]"
	      while ( D11 != "Y" || D11 != "N" ) {
		      getline D11
		  if (D11=="Y" || D11=="N")
		      break
		  else print "out of range"
	      }
	      if (D11=="Y") {
		  print "Explore local financial support options, such as disability services"
		  print " "
	      }
	      if (D11=="Y" || D11=="N")
	      print "5. Does the person have ANY of the following BEHAVIOURAL or PSYHCOLOGICAL symptoms of dementia?"
		  while ( D12 != "Y" || D12 != "N" ) {
		      getline D12
		  if (D12=="Y" || D12=="N")
		      break
		  else print "out of range"
	      }
	      if (D12=="Y" || D12=="N")
		  print "IF THERE IS IMMINENT RISK OF SUICIDE. ASSESS AND MANAGE before continuing to protocol. Go to SUICIDE protocol"
	      print "Pleasem, Go to treatment protocol. please, visit the World Healt Organization mhGAP intervention Guide version 2"
	      print "Please, visit https://www.who.int/publications/item/9789241549790"
    exit;
}
