#!/usr/bin/perl
use strict;

my @directions = (
  'back-left',
  'back-right',
  'back',
  'forward-left',
  'forward-right',
  'forward',
  'left',
  'right'
);
print "export GOOGLE_APPLICATION_CREDENTIALS=/home/g/websites/creds.json\n";
my $script = '';

for my $direction (@directions){
  #print "DIrection is $direction\n";
  my $text = $direction;
  $text =~ s/-/ /;
  my $command = 'curl -H "Authorization: Bearer $(gcloud auth application-default print-access-token)" -H "Content-Type: application/json; charset=utf-8" --data "{';
  $command .= <<"END_CMD";
    'input':{
      'text':'$text'
    },
    'voice':{
      'languageCode':'en-gb',
      'name':'en-GB-Standard-A',
      'ssmlGender':'FEMALE'
    },
    'audioConfig':{
      'audioEncoding':'OGG_OPUS'
    }
  }" "https://texttospeech.googleapis.com/v1/text:synthesize" > $direction.txt
END_CMD

  $script .= $command;
}

print $script
