#/!/bin/sed
# This is a stream editor (sed) converter to make letters and reports more gender neutral
# To make this script work for a file written in x-sistemo use the following commands:
# Limitation: object pronoun & possessive adjective are the same for singular feminine (her). If the text has her it should be cross revised manually. A bang will appear next to the word to alert the reviewer. For a singular third person male the possessive adjective and the possessive pronoun are the same. A bang will appear to alert the reviewer to check the text
# chmod +x neutralise.sed
# sed -i -f neutralise.sed file.txt
# The script will go through each of these to convert them

# Pronouns
s/He's /They're! /
s/ He is / They are /
s/ he's / They're! /
s/ he / they /
s/He /They /
s/ him / them /
s/His /Their! /
s/ his / theirs! /
s/ himself is /themselves are /
s/ himself / themselves /
s/Himself /Themselves /
s/She's /They're! /
s/ she's / they're! /
s/She is /They are /
s/ she is / they are /
s/ she / they /
s/She /They /
s/ her / them! /
s/Her /Their! /
s/ hers / theirs /
s/Hers /Theirs /
s/ herself is / themselves are /
s/ herself / themselves /
s/Herself /Themselves /

# Jobs
s/ Air hostess /Flight attendant /
s/air hostess / flight attendant /
s/ Air hostesses /Flight attendants /
s/air hostesses / flight attendants /
s/Anchorman /Anchor person /
s/ anchorman/ anchor person/
s/Assembleyman/Assembley person/
s/Actress / Actor /
s/ actress / actor /
s/Businessman / Business person /
s/ businessman / business person /
s/Cameraman /Camera operator /
s/ cameraman / camera operator /
s/Chairman /Chair person /
s/ chairman /chair person /
s/Clergyman / Pastor /
s/ clergyman / pastor /
s/Congressman / Congress person /
s/ congressman / congress person /
s/Construction man /Construction worker /
s/ construction man / construction worker /
s/Council man /Council member /
s/ council man / council member /
s/Craftsman /Artisan /
s/ craftsman / artisan /
s/Crewman / Crew member /
s/ crewman / crew member /
s/Doorman /Door keeper /
s/ doorman / door keeper /
s/Fireman /Firefighter /
s/ fireman / firefighter /
s/Fire man /Firefighter /
s/ fire man / firefighter /
s/Foreman /Supervisor /
s/ foreman / supervisor /
s/Garbage man /Bin collector /
s/ garbage man / bin collector /
s/Handyman / Maintenance worker /
s/ handyman / maintenance worker /
s/Longshoreman /Stevedore /
s/ longshoreman / stevedore /
s/Mail man /Mail courier /
s/ mail man / mail courier /
s/Mailman /Mail courier /
s/ mailman / mail courier /
s/Patrolman / Police Officer /
s/ patrolman / police officer /
s/Policman / Police Officer /
s/ policeman / police officer /
s/Police woman / Police Officer /
s/ police woman / police officer /
s/Salesman /Salesperson /
s/ salesman / salesperson /
s/Stuntman /Stuntperson /
s/ stuntman / stuntperson /
s/Weatherman /Meteorologist /
s/ weatherman / meteorologist /
s/Anchormen /Anchor persons /
s/ anchormen / anchor persons /
s/Assembleymen/Assembley persons/
s/Actresses / Actors /
s/ actresses / actors /
s/Businessmen / Business persons /
s/ businessmen / business persons /
s/Cameramen /Camera operators /
s/ cameramen / camera operators /
s/Chairmen /Chair persons /
s/ chairmen /chair persons /
s/Clergymen / Pastors /
s/ clergymen / pastors /
s/Congressmen / Congress persons /
s/ congressmen / congress persons /
s/Construction men /Construction workers /
s/ construction men / construction workers /
s/Council men /Council members /
s/ council men / council members /
s/Craftsmen /Artisans /
s/ craftsmen / artisans /
s/Crewmen / Crew members /
s/ crewmen / crew members /
s/Doormen /Door keepers /
s/ doormen / door keepers /
s/Firemen /Firefighters /
s/ firemen / firefighters /
s/Fire men /Firefighters /
s/ fire men / firefighters /
s/Foremen /Supervisors /
s/ foremen / supervisors /
s/Garbage men /Bin collectors /
s/ garbage men / bin collectors /
s/Handymen / Maintenance workers /
s/ handymen / maintenance workers /
s/Layman /Layperson /
s/ layman / layperson /
s/Laymen /Laypersons /
s/ laymen / laypersons /
s/Longshoremen /Stevedores /
s/ longshoremen / stevedores /
s/Mail men /Mail couriers /
s/ mail men / mail couriers /
s/Mailmen /Mail couriers /
s/ mailmen / mail couriers /
s/Manned /Crewed /
s/ manned / crewed /
s/Patrolmen / Police Officers /
s/ patrolmen / police officers /
s/Policmen / Police Officers /
s/ policemen / police officers /
s/Police women / Police Officers /
s/ police women / police officers /
s/Salesmen /Salespersons /
s/ salesmen / salespersons /
s/Stuntmen /Stuntpersons /
s/ stuntmen / stuntpersons /
s/Waitress /Table attendant /
s/ waitress / table attendant /
s/Waitresses /Table attendants /
s/ waitresses / table attendants /
s/Weathermen /Meteorologists /
s/ weathermen / meteorologists /

# Human relationships
s/Man / Person /
s/ man / person /
s/Woman /Person /
s/ woman / person /
s/ woman/ person/
s/ man/ person/
s/Father/Parent /
s/Mother/Parent /
s/ father / parent /
s/ mother / parent /
s/ father/ parent/
s/ mother/ parent/
s/Brother/sibling/
s/ brother / sibling /
s/ brother/sibling /
s/Paternal/Parental/
s/Maternal/Parental/
s/ paternal / parental /
s/ maternal / parental /
s/Fathers/Parents /
s/Mothers/Parents /
s/ fathers / parents /
s/ mothers / parents /
s/ fathers/ parents/
s/ mothers/ parents/
s/Brothers/siblings/
s/ brothers / siblings /
s/ brothers/siblings /
s/Men / Persons /
s/ men / persons /
s/Women /Persons /
s/ women / persons /
s/ women/ persons/
s/ men/ persons/
s/Husband / Partner /
s/ husband / partner /
s/Wife / Partner /
s/ wife / partner
s/Husbands / Partner /
s/ husbands / partner /
s/Wives / Partners /
s/ wives / partners /
s/Boyfriend / Significant other /
s/ bodyfriend / significant other /
s/Boyfriends / Significant others /
s/ bodyfriends / significant others /
s/Dude / Friend /
s/ dude / friend /
s/Dudes / Friends /
s/ dudes / friends /
s/Grandaughter /Grandchild /
s/ grandaughter / grandchild /
s/Grandaughters / grandchildren /
s/ grandaughters / grandchildren /
s/Grandson /Grandchild /
s/ grandson / grandchild /
s/Grandsons /Grandchildren /
s/ grandsons / grandchildren /
s/Son /Child /
s/ son / child /
s/Sons /Children /
s/ sons / children /
s/Daughter /Child /
s/ daughter / child /
s/Daughters /Children /
s/ daughters / children /
