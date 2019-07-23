export GOOGLE_APPLICATION_CREDENTIALS=/home/g/websites/ankles/sounds/creds.json
curl -H "Authorization: Bearer $(gcloud auth application-default print-access-token)" -H "Content-Type: application/json; charset=utf-8" --data "{    'input':{
      'text':'back left'
    },
    'voice':{
      'languageCode':'en-gb',
      'name':'en-GB-Standard-A',
      'ssmlGender':'FEMALE'
    },
    'audioConfig':{
      'audioEncoding':'OGG_OPUS'
    }
  }" "https://texttospeech.googleapis.com/v1/text:synthesize" > back-left.txt
curl -H "Authorization: Bearer $(gcloud auth application-default print-access-token)" -H "Content-Type: application/json; charset=utf-8" --data "{    'input':{
      'text':'back right'
    },
    'voice':{
      'languageCode':'en-gb',
      'name':'en-GB-Standard-A',
      'ssmlGender':'FEMALE'
    },
    'audioConfig':{
      'audioEncoding':'OGG_OPUS'
    }
  }" "https://texttospeech.googleapis.com/v1/text:synthesize" > back-right.txt
curl -H "Authorization: Bearer $(gcloud auth application-default print-access-token)" -H "Content-Type: application/json; charset=utf-8" --data "{    'input':{
      'text':'back'
    },
    'voice':{
      'languageCode':'en-gb',
      'name':'en-GB-Standard-A',
      'ssmlGender':'FEMALE'
    },
    'audioConfig':{
      'audioEncoding':'OGG_OPUS'
    }
  }" "https://texttospeech.googleapis.com/v1/text:synthesize" > back.txt
curl -H "Authorization: Bearer $(gcloud auth application-default print-access-token)" -H "Content-Type: application/json; charset=utf-8" --data "{    'input':{
      'text':'forward left'
    },
    'voice':{
      'languageCode':'en-gb',
      'name':'en-GB-Standard-A',
      'ssmlGender':'FEMALE'
    },
    'audioConfig':{
      'audioEncoding':'OGG_OPUS'
    }
  }" "https://texttospeech.googleapis.com/v1/text:synthesize" > forward-left.txt
curl -H "Authorization: Bearer $(gcloud auth application-default print-access-token)" -H "Content-Type: application/json; charset=utf-8" --data "{    'input':{
      'text':'forward right'
    },
    'voice':{
      'languageCode':'en-gb',
      'name':'en-GB-Standard-A',
      'ssmlGender':'FEMALE'
    },
    'audioConfig':{
      'audioEncoding':'OGG_OPUS'
    }
  }" "https://texttospeech.googleapis.com/v1/text:synthesize" > forward-right.txt
curl -H "Authorization: Bearer $(gcloud auth application-default print-access-token)" -H "Content-Type: application/json; charset=utf-8" --data "{    'input':{
      'text':'forward'
    },
    'voice':{
      'languageCode':'en-gb',
      'name':'en-GB-Standard-A',
      'ssmlGender':'FEMALE'
    },
    'audioConfig':{
      'audioEncoding':'OGG_OPUS'
    }
  }" "https://texttospeech.googleapis.com/v1/text:synthesize" > forward.txt
curl -H "Authorization: Bearer $(gcloud auth application-default print-access-token)" -H "Content-Type: application/json; charset=utf-8" --data "{    'input':{
      'text':'left'
    },
    'voice':{
      'languageCode':'en-gb',
      'name':'en-GB-Standard-A',
      'ssmlGender':'FEMALE'
    },
    'audioConfig':{
      'audioEncoding':'OGG_OPUS'
    }
  }" "https://texttospeech.googleapis.com/v1/text:synthesize" > left.txt
curl -H "Authorization: Bearer $(gcloud auth application-default print-access-token)" -H "Content-Type: application/json; charset=utf-8" --data "{    'input':{
      'text':'right'
    },
    'voice':{
      'languageCode':'en-gb',
      'name':'en-GB-Standard-A',
      'ssmlGender':'FEMALE'
    },
    'audioConfig':{
      'audioEncoding':'OGG_OPUS'
    }
  }" "https://texttospeech.googleapis.com/v1/text:synthesize" > right.txt
