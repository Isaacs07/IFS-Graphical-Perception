* Encoding: UTF-8.

DATASET ACTIVATE DataSet1.

** SAVE NEW DATASET ** - repData_V1-full

* remove irrelevant variables

DELETE VARIABLES StartDate EndDate Status IPAddress Progress Finished RecordedDate RecipientLastName
    RecipientFirstName RecipientEmail  ExternalReference LocationLatitude LocationLongitude UserLanguage
    Durationinseconds  BarP1_QP1 PieP1_QP1 barP2_QP2 pieP2_QP2

* recoding variables for ease

RECODE DistributionChannel ('anonymous'='1') (ELSE='0').
EXECUTE.

RECODE Consent ('I have read, understood and agree with the above statements and wish to '+
    'participate in this study'='1') (ELSE='0').
EXECUTE.

RECODE FinalConsent ('I confirm that I am happy for my data to be collected and analysed for '+
    'this study'='1') (ELSE='0').
EXECUTE.

* filtering data for analysis

FILTER OFF.
USE ALL.
SELECT IF (DistributionChannel = '1' & Consent = '1' & FinalConsent = '1').
EXECUTE.

*remove irrelevant variables
    
DELETE VARIABLES  DistributionChannel Consent FinalConsent

** SAVE NEW DATASET ** - repData_V2-filtered


* Define Variable Properties - change all estimation measures to scale variables
    
*bar1C1_Q1.
VARIABLE LEVEL  bar1C1_Q1(SCALE).
*bar2E1_Q1.
VARIABLE LEVEL  bar2E1_Q1(SCALE).
*bar3A1_Q1.
VARIABLE LEVEL  bar3A1_Q1(SCALE).
*bar3D1_Q1.
VARIABLE LEVEL  bar3D1_Q1(SCALE).
*bar4C1_Q1.
VARIABLE LEVEL  bar4C1_Q1(SCALE).
*bar5B1_Q1.
VARIABLE LEVEL  bar5B1_Q1(SCALE).
*bar5D1_Q1.
VARIABLE LEVEL  bar5D1_Q1(SCALE).
*bar6B1_Q1.
VARIABLE LEVEL  bar6B1_Q1(SCALE).
*bar6C1_Q1.
VARIABLE LEVEL  bar6C1_Q1(SCALE).
*bar6E1_Q1.
VARIABLE LEVEL  bar6E1_Q1(SCALE).
*bar7D1_Q1.
VARIABLE LEVEL  bar7D1_Q1(SCALE).
*bar9A1_Q1.
VARIABLE LEVEL  bar9A1_Q1(SCALE).
*bar9C1_Q1.
VARIABLE LEVEL  bar9C1_Q1(SCALE).
*bar10E1_Q1.
VARIABLE LEVEL  bar10E1_Q1(SCALE).
*pie1A1_Q1.
VARIABLE LEVEL  pie1A1_Q1(SCALE).
*pie1B1_Q1.
VARIABLE LEVEL  pie1B1_Q1(SCALE).
*pie10E1_Q1.
VARIABLE LEVEL  pie10E1_Q1(SCALE).
*pie3A1_Q1.
VARIABLE LEVEL  pie3A1_Q1(SCALE).
*pie4B1_Q1.
VARIABLE LEVEL  pie4B1_Q1(SCALE).
*pie5B1_Q1.
VARIABLE LEVEL  pie5B1_Q1(SCALE).
*pie5D1_Q1.
VARIABLE LEVEL  pie5D1_Q1(SCALE).
*pie6C1_Q1.
VARIABLE LEVEL  pie6C1_Q1(SCALE).
*pie6D1_Q1.
VARIABLE LEVEL  pie6D1_Q1(SCALE).
*pie6E1_Q1.
VARIABLE LEVEL  pie6E1_Q1(SCALE).
*pie7D1_Q1.
VARIABLE LEVEL  pie7D1_Q1(SCALE).
*pie8C1_Q1.
VARIABLE LEVEL  pie8C1_Q1(SCALE).
*pie9A1_Q1.
VARIABLE LEVEL  pie9A1_Q1(SCALE).
*pie9C1_Q1.
VARIABLE LEVEL  pie9C1_Q1(SCALE).
*pie9E1_Q1.
VARIABLE LEVEL  pie9E1_Q1(SCALE).
*bar1A2_Q2.
VARIABLE LEVEL  bar1A2_Q2(SCALE).
*bar1B2_Q2.
VARIABLE LEVEL  bar1B2_Q2(SCALE).
*bar1D2_Q2.
VARIABLE LEVEL  bar1D2_Q2(SCALE).
*bar10E2_Q2.
VARIABLE LEVEL  bar10E2_Q2(SCALE).
*bar2E2_Q2.
VARIABLE LEVEL  bar2E2_Q2(SCALE).
*bar3B2_Q2.
VARIABLE LEVEL  bar3B2_Q2(SCALE).
*bar3D2_Q2.
VARIABLE LEVEL  bar3D2_Q2(SCALE).
*bar4B2_Q2.
VARIABLE LEVEL  bar4B2_Q2(SCALE).
*bar4D2_Q2.
VARIABLE LEVEL  bar4D2_Q2(SCALE).
*bar5A2_Q2.
VARIABLE LEVEL  bar5A2_Q2(SCALE).
*bar6D2_Q2.
VARIABLE LEVEL  bar6D2_Q2(SCALE).
*bar6E2_Q2.
VARIABLE LEVEL  bar6E2_Q2(SCALE).
*bar7A2_Q2.
VARIABLE LEVEL  bar7A2_Q2(SCALE).
*bar7C2_Q2.
VARIABLE LEVEL  bar7C2_Q2(SCALE).
*bar7E2_Q2.
VARIABLE LEVEL  bar7E2_Q2(SCALE).
*bar8B2_Q2.
VARIABLE LEVEL  bar8B2_Q2(SCALE).
*bar8D2_Q2.
VARIABLE LEVEL  bar8D2_Q2(SCALE).
*bar8E2_Q2.
VARIABLE LEVEL  bar8E2_Q2(SCALE).
*bar9B2_Q2.
VARIABLE LEVEL  bar9B2_Q2(SCALE).
*bar9C2_Q2.
VARIABLE LEVEL  bar9C2_Q2(SCALE).
*pie1D2_Q2.
VARIABLE LEVEL  pie1D2_Q2(SCALE).
*pie10E2_Q2.
VARIABLE LEVEL  pie10E2_Q2(SCALE).
*pie2E2_Q2.
VARIABLE LEVEL  pie2E2_Q2(SCALE).
*pie4B2_Q2.
VARIABLE LEVEL  pie4B2_Q2(SCALE).
*pie4E2_Q2.
VARIABLE LEVEL  pie4E2_Q2(SCALE).
*pie6D2_Q2.
VARIABLE LEVEL  pie6D2_Q2(SCALE).
*pie6E2_Q2.
VARIABLE LEVEL  pie6E2_Q2(SCALE).
*pie8B2_Q2.
VARIABLE LEVEL  pie8B2_Q2(SCALE).
*pie8E2_Q2.
VARIABLE LEVEL  pie8E2_Q2(SCALE).
EXECUTE.
*bar1D1_Q1.
VARIABLE LEVEL  bar1D1_Q1(SCALE).
*bar10A2_Q2.
VARIABLE LEVEL  bar10A2_Q2(SCALE).
*bar2D2_Q2.
VARIABLE LEVEL  bar2D2_Q2(SCALE).
*pie9C2_Q2.
VARIABLE LEVEL  pie9C2_Q2(SCALE).
EXECUTE.

* calculate part-to-part errors (replace with new values)

COMPUTE bar1A1=LN(ABS(bar1A1_Q1 - 53.11813) + 0.125)/LN(2).
EXECUTE.

COMPUTE pie1A1=LN(ABS(pie1A1_Q1 - 53.11813) + 0.125)/LN(2).
EXECUTE.

COMPUTE bar1B1=LN(ABS(bar1B1_Q1 - 41.68004) + 0.125)/LN(2).
EXECUTE.

COMPUTE pie1B1=LN(ABS(pie1B1_Q1 - 41.68004) + 0.125)/LN(2).
EXECUTE.

COMPUTE bar1C1=LN(ABS(bar1C1_Q1 - 93.08305) + 0.125)/LN(2).
EXECUTE.

COMPUTE pie1C1=LN(ABS(pie1C1_Q1 - 93.08305) + 0.125)/LN(2).
EXECUTE.

COMPUTE bar1D1=LN(ABS(bar1D1_Q1 - 9.366268) + 0.125)/LN(2).
EXECUTE.

COMPUTE pie1D1=LN(ABS(pie1D1_Q1 - 9.366268) + 0.125)/LN(2).
EXECUTE.

COMPUTE bar2A1=LN(ABS(bar2A1_Q1 - 76.05849) + 0.125)/LN(2).
EXECUTE.

COMPUTE pie2A1=LN(ABS(pie2A1_Q1 - 76.05849) + 0.125)/LN(2).
EXECUTE.

COMPUTE bar2B1=LN(ABS(bar2B1_Q1 - 78.40288) + 0.125)/LN(2).
EXECUTE.

COMPUTE pie2B1=LN(ABS(pie2B1_Q1 - 78.40288) + 0.125)/LN(2).
EXECUTE.

COMPUTE bar2D1=LN(ABS(bar2D1_Q1 - 40.82847) + 0.125)/LN(2).
EXECUTE.

COMPUTE pie2D1=LN(ABS(pie2D1_Q1 - 40.82847) + 0.125)/LN(2).
EXECUTE.

COMPUTE bar2E1=LN(ABS(bar2E1_Q1 - 9.969779) + 0.125)/LN(2).
EXECUTE.

COMPUTE pie2E1=LN(ABS(pie2E1_Q1 - 9.969779) + 0.125)/LN(2).
EXECUTE.

COMPUTE bar3A1=LN(ABS(bar3A1_Q1 - 98.54147) + 0.125)/LN(2).
EXECUTE.

COMPUTE pie3A1=LN(ABS(pie3A1_Q1 - 98.54147) + 0.125)/LN(2).
EXECUTE.

COMPUTE bar3B1=LN(ABS(bar3B1_Q1 - 58.37826) + 0.125)/LN(2).
EXECUTE.

COMPUTE pie3B1=LN(ABS(pie3B1_Q1 - 58.37826) + 0.125)/LN(2).
EXECUTE.

COMPUTE bar3C1=LN(ABS(bar3C1_Q1 - 69.60712) + 0.125)/LN(2).
EXECUTE.

COMPUTE pie3C1=LN(ABS(pie3C1_Q1 - 69.60712) + 0.125)/LN(2).
EXECUTE.

COMPUTE bar3D1=LN(ABS(bar3D1_Q1 - 42.7221) + 0.125)/LN(2).
EXECUTE.

COMPUTE pie3D1=LN(ABS(pie3D1_Q1 - 42.7221) + 0.125)/LN(2).
EXECUTE.

COMPUTE bar4B1=LN(ABS(bar4B1_Q1 - 12.89218) + 0.125)/LN(2).
EXECUTE.

COMPUTE pie4B1=LN(ABS(pie4B1_Q1 - 12.89218) + 0.125)/LN(2).
EXECUTE.

COMPUTE bar4C1=LN(ABS(bar4C1_Q1 - 97.71854) + 0.125)/LN(2).
EXECUTE.

COMPUTE pie4C1=LN(ABS(pie4C1_Q1 - 97.71854) + 0.125)/LN(2).
EXECUTE.

COMPUTE bar4D1=LN(ABS(bar4D1_Q1 - 51.41849) + 0.125)/LN(2).
EXECUTE.

COMPUTE pie4D1=LN(ABS(pie4D1_Q1 - 51.41849) + 0.125)/LN(2).
EXECUTE.

COMPUTE bar4E1=LN(ABS(bar4E1_Q1 - 87.34889) + 0.125)/LN(2).
EXECUTE.

COMPUTE pie4E1=LN(ABS(pie4E1_Q1 - 87.34889) + 0.125)/LN(2).
EXECUTE.

COMPUTE bar5A1=LN(ABS(bar5A1_Q1 - 35.14878) + 0.125)/LN(2).
EXECUTE.

COMPUTE pie5A1=LN(ABS(pie5A1_Q1 - 35.14878) + 0.125)/LN(2).
EXECUTE.

COMPUTE bar5B1=LN(ABS(bar5B1_Q1 - 90.83987) + 0.125)/LN(2).
EXECUTE.

COMPUTE pie5B1=LN(ABS(pie5B1_Q1 - 90.83987) + 0.125)/LN(2).
EXECUTE.

COMPUTE bar5C1=LN(ABS(bar5C1_Q1 - 69.27978) + 0.125)/LN(2).
EXECUTE.

COMPUTE pie5C1=LN(ABS(pie5C1_Q1 - 69.27978) + 0.125)/LN(2).
EXECUTE.

COMPUTE bar5D1=LN(ABS(bar5D1_Q1 - 93.20177) + 0.125)/LN(2).
EXECUTE.

COMPUTE pie5D1=LN(ABS(pie5D1_Q1 - 93.20177) + 0.125)/LN(2).
EXECUTE.

COMPUTE bar6B1=LN(ABS(bar6B1_Q1 - 93.96294) + 0.125)/LN(2).
EXECUTE.

COMPUTE pie6B1=LN(ABS(pie6B1_Q1 - 93.96294) + 0.125)/LN(2).
EXECUTE.

COMPUTE bar6C1=LN(ABS(bar6C1_Q1 - 99.63601) + 0.125)/LN(2).
EXECUTE.

COMPUTE pie6C1=LN(ABS(pie6C1_Q1 - 99.63601) + 0.125)/LN(2).
EXECUTE.

COMPUTE bar6D1=LN(ABS(bar6D1_Q1 - 23.46286) + 0.125)/LN(2).
EXECUTE.

COMPUTE pie6D1=LN(ABS(pie6D1_Q1 - 23.46286) + 0.125)/LN(2).
EXECUTE.

COMPUTE bar6E1=LN(ABS(bar6E1_Q1 - 10.85752) + 0.125)/LN(2).
EXECUTE.

COMPUTE pie6E1=LN(ABS(pie6E1_Q1 - 10.85752) + 0.125)/LN(2).
EXECUTE.

COMPUTE bar7A1=LN(ABS(bar7A1_Q1 - 41.91513) + 0.125)/LN(2).
EXECUTE.

COMPUTE pie7A1=LN(ABS(pie7A1_Q1 - 41.91513) + 0.125)/LN(2).
EXECUTE.

COMPUTE bar7C1=LN(ABS(bar7C1_Q1 - 44.60849) + 0.125)/LN(2).
EXECUTE.

COMPUTE pie7C1=LN(ABS(pie7C1_Q1 - 44.60849) + 0.125)/LN(2).
EXECUTE.

COMPUTE bar7D1=LN(ABS(bar7D1_Q1 - 98.54283) + 0.125)/LN(2).
EXECUTE.

COMPUTE pie7D1=LN(ABS(pie7D1_Q1 - 98.54283) + 0.125)/LN(2).
EXECUTE.

COMPUTE bar7E1=LN(ABS(bar7E1_Q1 - 35.18975) + 0.125)/LN(2).
EXECUTE.

COMPUTE pie7E1=LN(ABS(pie7E1_Q1 - 35.18975) + 0.125)/LN(2).
EXECUTE.

COMPUTE bar8B1=LN(ABS(bar8B1_Q1 - 26.92183) + 0.125)/LN(2).
EXECUTE.

COMPUTE pie8B1=LN(ABS(pie8B1_Q1 - 26.92183) + 0.125)/LN(2).
EXECUTE.

COMPUTE bar8C1=LN(ABS(bar8C1_Q1 - 81.11219) + 0.125)/LN(2).
EXECUTE.

COMPUTE pie8C1=LN(ABS(pie8C1_Q1 - 81.11219) + 0.125)/LN(2).
EXECUTE.

COMPUTE bar8D1=LN(ABS(bar8D1_Q1 - 45.44667) + 0.125)/LN(2).
EXECUTE.

COMPUTE pie8D1=LN(ABS(pie8D1_Q1 - 45.44667) + 0.125)/LN(2).
EXECUTE.

COMPUTE bar8E1=LN(ABS(bar8E1_Q1 - 17.38989) + 0.125)/LN(2).
EXECUTE.

COMPUTE pie8E1=LN(ABS(pie8E1_Q1 - 17.38989) + 0.125)/LN(2).
EXECUTE.

COMPUTE bar9A1=LN(ABS(bar9A1_Q1 - 87.86566) + 0.125)/LN(2).
EXECUTE.

COMPUTE pie9A1=LN(ABS(pie9A1_Q1 - 87.86566) + 0.125)/LN(2).
EXECUTE.

COMPUTE bar9B1=LN(ABS(bar9B1_Q1 - 51.86213) + 0.125)/LN(2).
EXECUTE.

COMPUTE pie9B1=LN(ABS(pie9B1_Q1 - 51.86213) + 0.125)/LN(2).
EXECUTE.

COMPUTE bar9C1=LN(ABS(bar9C1_Q1 - 15.76043) + 0.125)/LN(2).
EXECUTE.

COMPUTE pie9C1=LN(ABS(pie9C1_Q1 - 15.76043) + 0.125)/LN(2).
EXECUTE.

COMPUTE bar9E1=LN(ABS(bar9E1_Q1 - 83.08505) + 0.125)/LN(2).
EXECUTE.

COMPUTE pie9E1=LN(ABS(pie9E1_Q1 - 83.08505) + 0.125)/LN(2).
EXECUTE.

COMPUTE bar10A1=LN(ABS(bar10A1_Q1 - 20.99651) + 0.125)/LN(2).
EXECUTE.

COMPUTE pie10A1=LN(ABS(pie10A1_Q1 - 20.99651) + 0.125)/LN(2).
EXECUTE.

COMPUTE bar10B1=LN(ABS(bar10B1_Q1 - 63.87731) + 0.125)/LN(2).
EXECUTE.

COMPUTE pie10B1=LN(ABS(pie10B1_Q1 - 63.87731) + 0.125)/LN(2).
EXECUTE.

COMPUTE bar10C1=LN(ABS(bar10C1_Q1 - 63.31047) + 0.125)/LN(2).
EXECUTE.

COMPUTE pie10C1=LN(ABS(pie10C1_Q1 - 63.31047) + 0.125)/LN(2).
EXECUTE.

COMPUTE bar10E1=LN(ABS(bar10E1_Q1 - 10.64838) + 0.125)/LN(2).
EXECUTE.

COMPUTE pie10E1=LN(ABS(pie10E1_Q1 - 10.64838) + 0.125)/LN(2).
EXECUTE.

* calculate part-to-whole errors (replace with new values)
    
COMPUTE bar1A2=LN(ABS(bar1A2_Q2 - 17.87) + 0.125)/LN(2).
EXECUTE.

COMPUTE pie1A2=LN(ABS(pie1A2_Q2 - 17.87) + 0.125)/LN(2).
EXECUTE.

COMPUTE bar1B2=LN(ABS(bar1B2_Q2 - 14.022) + 0.125)/LN(2).
EXECUTE.

COMPUTE pie1B2=LN(ABS(pie1B2_Q2 - 14.022) + 0.125)/LN(2).
EXECUTE.

COMPUTE bar1C2=LN(ABS(bar1C2_Q2 - 31.315) + 0.125)/LN(2).
EXECUTE.

COMPUTE pie1C2=LN(ABS(pie1C2_Q2 - 31.315) + 0.125)/LN(2).
EXECUTE.

COMPUTE bar1D2=LN(ABS(bar1D2_Q2 - 3.151) + 0.125)/LN(2).
EXECUTE.

COMPUTE pie1D2=LN(ABS(pie1D2_Q2 - 3.151) + 0.125)/LN(2).
EXECUTE.

COMPUTE bar2A2=LN(ABS(bar2A2_Q2 - 24.916) + 0.125)/LN(2).
EXECUTE.

COMPUTE pie2A2=LN(ABS(pie2A2_Q2 - 24.916) + 0.125)/LN(2).
EXECUTE.

COMPUTE bar2B2=LN(ABS(bar2B2_Q2 - 25.684) + 0.125)/LN(2).
EXECUTE.

COMPUTE pie2B2=LN(ABS(pie2B2_Q2 - 25.684) + 0.125)/LN(2).
EXECUTE.

COMPUTE bar2D2=LN(ABS(bar2D2_Q2 - 13.375) + 0.125)/LN(2).
EXECUTE.

COMPUTE pie2D2=LN(ABS(pie2D2_Q2 - 13.375) + 0.125)/LN(2).
EXECUTE.

COMPUTE bar2E2=LN(ABS(bar2E2_Q2 - 3.266) + 0.125)/LN(2).
EXECUTE.

COMPUTE pie2E2=LN(ABS(pie2E2_Q2 - 3.266) + 0.125)/LN(2).
EXECUTE.

COMPUTE bar3A2=LN(ABS(bar3A2_Q2 - 26.687) + 0.125)/LN(2).
EXECUTE.

COMPUTE pie3A2=LN(ABS(pie3A2_Q2 - 26.687) + 0.125)/LN(2).
EXECUTE.

COMPUTE bar3B2=LN(ABS(bar3B2_Q2 - 15.81) + 0.125)/LN(2).
EXECUTE.

COMPUTE pie3B2=LN(ABS(pie3B2_Q2 - 15.81) + 0.125)/LN(2).
EXECUTE.

COMPUTE bar3C2=LN(ABS(bar3C2_Q2 - 18.851) + 0.125)/LN(2).
EXECUTE.

COMPUTE pie3C2=LN(ABS(pie3C2_Q2 - 18.851) + 0.125)/LN(2).
EXECUTE.

COMPUTE bar3D2=LN(ABS(bar3D2_Q2 - 11.57) + 0.125)/LN(2).
EXECUTE.

COMPUTE pie3D2=LN(ABS(pie3D2_Q2 - 11.57) + 0.125)/LN(2).
EXECUTE.

COMPUTE bar4B2=LN(ABS(bar4B2_Q2 - 3.69) + 0.125)/LN(2).
EXECUTE.

COMPUTE pie4B2=LN(ABS(pie4B2_Q2 - 3.69) + 0.125)/LN(2).
EXECUTE.

COMPUTE bar4C2=LN(ABS(bar4C2_Q2 - 27.969) + 0.125)/LN(2).
EXECUTE.

COMPUTE pie4C2=LN(ABS(pie4C2_Q2 - 27.969) + 0.125)/LN(2).
EXECUTE.

COMPUTE bar4D2=LN(ABS(bar4D2_Q2 - 14.717) + 0.125)/LN(2).
EXECUTE.

COMPUTE pie4D2=LN(ABS(pie4D2_Q2 - 14.717) + 0.125)/LN(2).
EXECUTE.

COMPUTE bar4E2=LN(ABS(bar4E2_Q2 - 25.001) + 0.125)/LN(2).
EXECUTE.

COMPUTE pie4E2=LN(ABS(pie4E2_Q2 - 25.001) + 0.125)/LN(2).
EXECUTE.

COMPUTE bar5A2=LN(ABS(bar5A2_Q2 - 9.048) + 0.125)/LN(2).
EXECUTE.

COMPUTE pie5A2=LN(ABS(pie5A2_Q2 - 9.048) + 0.125)/LN(2).
EXECUTE.

COMPUTE bar5B2=LN(ABS(bar5B2_Q2 - 23.384) + 0.125)/LN(2).
EXECUTE.

COMPUTE pie5B2=LN(ABS(pie5B2_Q2 - 23.384) + 0.125)/LN(2).
EXECUTE.

COMPUTE bar5C2=LN(ABS(bar5C2_Q2 - 17.834) + 0.125)/LN(2).
EXECUTE.

COMPUTE pie5C2=LN(ABS(pie5C2_Q2 - 17.834) + 0.125)/LN(2).
EXECUTE.

COMPUTE bar5D2=LN(ABS(bar5D2_Q2 - 23.992) + 0.125)/LN(2).
EXECUTE.

COMPUTE pie5D2=LN(ABS(pie5D2_Q2 - 23.992) + 0.125)/LN(2).
EXECUTE.

COMPUTE bar6B2=LN(ABS(bar6B2_Q2 - 28.654) + 0.125)/LN(2).
EXECUTE.

COMPUTE pie6B2=LN(ABS(pie6B2_Q2 - 28.654) + 0.125)/LN(2).
EXECUTE.

COMPUTE bar6C2=LN(ABS(bar6C2_Q2 - 30.384) + 0.125)/LN(2).
EXECUTE.

COMPUTE pie6C2=LN(ABS(pie6C2_Q2 - 30.384) + 0.125)/LN(2).
EXECUTE.

COMPUTE bar6D2=LN(ABS(bar6D2_Q2 - 7.155) + 0.125)/LN(2).
EXECUTE.

COMPUTE pie6D2=LN(ABS(pie6D2_Q2 - 7.155) + 0.125)/LN(2).
EXECUTE.

COMPUTE bar6E2=LN(ABS(bar6E2_Q2 - 3.311) + 0.125)/LN(2).
EXECUTE.

COMPUTE pie6E2=LN(ABS(pie6E2_Q2 - 3.311) + 0.125)/LN(2).
EXECUTE.

COMPUTE bar7A2=LN(ABS(bar7A2_Q2 - 13.088) + 0.125)/LN(2).
EXECUTE.

COMPUTE pie7A2=LN(ABS(pie7A2_Q2 - 13.088) + 0.125)/LN(2).
EXECUTE.

COMPUTE bar7C2=LN(ABS(bar7C2_Q2 - 13.929) + 0.125)/LN(2).
EXECUTE.

COMPUTE pie7C2=LN(ABS(pie7C2_Q2 - 13.929) + 0.125)/LN(2).
EXECUTE.

COMPUTE bar7D2=LN(ABS(bar7D2_Q2 - 30.77) + 0.125)/LN(2).
EXECUTE.

COMPUTE pie7D2=LN(ABS(pie7D2_Q2 - 30.77) + 0.125)/LN(2).
EXECUTE.

COMPUTE bar7E2=LN(ABS(bar7E2_Q2 - 10.988) + 0.125)/LN(2).
EXECUTE.

COMPUTE pie7E2=LN(ABS(pie7E2_Q2 - 10.988) + 0.125)/LN(2).
EXECUTE.

COMPUTE bar8B2=LN(ABS(bar8B2_Q2 - 9.939) + 0.125)/LN(2).
EXECUTE.

COMPUTE pie8B2=LN(ABS(pie8B2_Q2 - 9.939) + 0.125)/LN(2).
EXECUTE.

COMPUTE bar8C2=LN(ABS(bar8C2_Q2 - 29.945) + 0.125)/LN(2).
EXECUTE.

COMPUTE pie8C2=LN(ABS(pie8C2_Q2 - 29.945) + 0.125)/LN(2).
EXECUTE.

COMPUTE bar8D2=LN(ABS(bar8D2_Q2 - 16.778) + 0.125)/LN(2).
EXECUTE.

COMPUTE pie8D2=LN(ABS(pie8D2_Q2 - 16.778) + 0.125)/LN(2).
EXECUTE.

COMPUTE bar8E2=LN(ABS(bar8E2_Q2 - 6.42) + 0.125)/LN(2).
EXECUTE.

COMPUTE pie8E2=LN(ABS(pie8E2_Q2 - 6.42) + 0.125)/LN(2).
EXECUTE.

COMPUTE bar9A2=LN(ABS(bar9A2_Q2 - 25.952) + 0.125)/LN(2).
EXECUTE.

COMPUTE pie9A2=LN(ABS(pie9A2_Q2 - 25.952) + 0.125)/LN(2).
EXECUTE.

COMPUTE bar9B2=LN(ABS(bar9B2_Q2 - 15.318) + 0.125)/LN(2).
EXECUTE.

COMPUTE pie9B2=LN(ABS(pie9B2_Q2 - 15.318) + 0.125)/LN(2).
EXECUTE.

COMPUTE bar9C2=LN(ABS(bar9C2_Q2 - 4.655) + 0.125)/LN(2).
EXECUTE.

COMPUTE pie9C2=LN(ABS(pie9C2_Q2 - 4.655) + 0.125)/LN(2).
EXECUTE.

COMPUTE bar9E2=LN(ABS(bar9E2_Q2 - 24.54) + 0.125)/LN(2).
EXECUTE.

COMPUTE pie9E2=LN(ABS(pie9E2_Q2 - 24.54) + 0.125)/LN(2).
EXECUTE.

COMPUTE bar10A2=LN(ABS(bar10A2_Q2 - 8.112) + 0.125)/LN(2).
EXECUTE.

COMPUTE pie10A2=LN(ABS(pie10A2_Q2 - 8.112) + 0.125)/LN(2).
EXECUTE.

COMPUTE bar10B2=LN(ABS(bar10B2_Q2 - 24.679) + 0.125)/LN(2).
EXECUTE.

COMPUTE pie10B2=LN(ABS(pie10B2_Q2 - 24.679) + 0.125)/LN(2).
EXECUTE.

COMPUTE bar10C2=LN(ABS(bar10C2_Q2 - 24.46) + 0.125)/LN(2).
EXECUTE.

COMPUTE pie10C2=LN(ABS(pie10C2_Q2 - 24.46) + 0.125)/LN(2).
EXECUTE.

COMPUTE bar10E2=LN(ABS(bar10E2_Q2 - 4.114) + 0.125)/LN(2).
EXECUTE.

COMPUTE pie10E2=LN(ABS(pie10E2_Q2 - 4.114) + 0.125)/LN(2).
EXECUTE.

* remove old variables
    
DELETE VARIABLES    bar1A1_Q1 bar1B1_Q1 bar1C1_Q1 bar1D1_Q1 bar2A1_Q1 bar2B1_Q1 bar2D1_Q1 bar2E1_Q1 bar3A1_Q1 
    bar3B1_Q1 bar3C1_Q1 bar3D1_Q1 bar4B1_Q1 bar4C1_Q1 bar4D1_Q1 bar4E1_Q1 bar5A1_Q1 bar5B1_Q1 bar5C1_Q1 
    bar5D1_Q1 bar6B1_Q1 bar6C1_Q1 bar6D1_Q1 bar6E1_Q1 bar7A1_Q1 bar7C1_Q1 bar7D1_Q1 bar7E1_Q1 bar8B1_Q1 
    bar8C1_Q1 bar8D1_Q1 bar8E1_Q1 bar9A1_Q1 bar9B1_Q1 bar9C1_Q1 bar9E1_Q1 bar10A1_Q1 bar10B1_Q1 
    bar10C1_Q1 bar10E1_Q1 pie1A1_Q1 pie1B1_Q1 pie1C1_Q1 pie1D1_Q1 pie10A1_Q1 pie10B1_Q1 pie10C1_Q1 
    pie10E1_Q1 pie2A1_Q1 pie2B1_Q1 pie2D1_Q1 pie2E1_Q1 pie3A1_Q1 pie3B1_Q1 pie3C1_Q1 pie3D1_Q1 
    pie4B1_Q1 pie4C1_Q1 pie4D1_Q1 pie4E1_Q1 pie5A1_Q1 pie5B1_Q1 pie5C1_Q1 pie5D1_Q1 pie6B1_Q1 pie6C1_Q1 
    pie6D1_Q1 pie6E1_Q1 pie7A1_Q1 pie7C1_Q1 pie7D1_Q1 pie7E1_Q1 pie8B1_Q1 pie8C1_Q1 pie8D1_Q1 pie8E1_Q1 
    pie9A1_Q1 pie9B1_Q1 pie9C1_Q1 pie9E1_Q1 bar1A2_Q2 bar1B2_Q2 bar1C2_Q2 bar1D2_Q2 bar10A2_Q2 
    bar10B2_Q2 bar10C2_Q2 bar10E2_Q2 bar2A2_Q2 bar2B2_Q2 bar2D2_Q2 bar2E2_Q2 bar3A2_Q2 bar3B2_Q2 
    bar3C2_Q2 bar3D2_Q2 bar4B2_Q2 bar4C2_Q2 bar4D2_Q2 bar4E2_Q2 bar5A2_Q2 bar5B2_Q2 bar5C2_Q2 bar5D2_Q2 
    bar6B2_Q2 bar6C2_Q2 bar6D2_Q2 bar6E2_Q2 bar7A2_Q2 bar7C2_Q2 bar7D2_Q2 bar7E2_Q2 bar8B2_Q2 bar8C2_Q2 
    bar8D2_Q2 bar8E2_Q2 bar9A2_Q2 bar9B2_Q2 bar9C2_Q2 bar9E2_Q2 pie1A2_Q2 pie1B2_Q2 pie1C2_Q2 pie1D2_Q2 
    pie10A2_Q2 pie10B2_Q2 pie10C2_Q2 pie10E2_Q2 pie2A2_Q2 pie2B2_Q2 pie2D2_Q2 pie2E2_Q2 pie3A2_Q2 
    pie3B2_Q2 pie3C2_Q2 pie3D2_Q2 pie4B2_Q2 pie4C2_Q2 pie4D2_Q2 pie4E2_Q2 pie5A2_Q2 pie5B2_Q2 pie5C2_Q2 
    pie5D2_Q2 pie6B2_Q2 pie6C2_Q2 pie6D2_Q2 pie6E2_Q2 pie7A2_Q2 pie7C2_Q2 pie7D2_Q2 pie7E2_Q2 pie8B2_Q2 
    pie8C2_Q2 pie8D2_Q2 pie8E2_Q2 pie9A2_Q2 pie9B2_Q2 pie9C2_Q2 pie9E2_Q2

** SAVE NEW DATASET ** - repData_V3-computed
    
* recoding variables for analysis

VARSTOCASES
  /MAKE bar FROM  bar1A1 bar1B1 bar1C1 bar1D1 bar2A1 bar2B1 bar2D1 bar2E1 bar3A1 bar3B1 bar3C1 bar3D1 bar4B1 bar4C1 
    bar4D1 bar4E1 bar5A1 bar5B1 bar5C1 bar5D1 bar6B1 bar6C1 bar6D1 bar6E1 bar7A1 bar7C1 bar7D1 bar7E1 
    bar8B1 bar8C1 bar8D1 bar8E1 bar9A1 bar9B1 bar9C1 bar9E1 bar10A1 bar10B1 bar10C1 bar10E1 bar1A2 
    bar1B2 bar1C2 bar1D2 bar2A2 bar2B2 bar2D2 bar2E2 bar3A2 bar3B2 bar3C2 bar3D2 bar4B2 bar4C2 bar4D2 
    bar4E2 bar5A2 bar5B2 bar5C2 bar5D2 bar6B2 bar6C2 bar6D2 bar6E2 bar7A2 bar7C2 bar7D2 bar7E2 bar8B2 
    bar8C2 bar8D2 bar8E2 bar9A2 bar9B2 bar9C2 bar9E2 bar10A2 bar10B2 bar10C2 bar10E2
  /MAKE pie FROM  pie1A1 pie1B1 pie1C1 pie1D1 pie2A1 pie2B1 pie2D1 pie2E1 pie3A1 pie3B1 pie3C1 pie3D1 pie4B1 pie4C1 
    pie4D1 pie4E1 pie5A1 pie5B1 pie5C1 pie5D1 pie6B1 pie6C1 pie6D1 pie6E1 pie7A1 pie7C1 pie7D1 pie7E1 
    pie8B1 pie8C1 pie8D1 pie8E1 pie9A1 pie9B1 pie9C1 pie9E1 pie10A1 pie10B1 pie10C1 pie10E1 pie1A2 
    pie1B2 pie1C2 pie1D2 pie2A2 pie2B2 pie2D2 pie2E2 pie3A2 pie3B2 pie3C2 pie3D2 pie4B2 pie4C2 pie4D2 
    pie4E2 pie5A2 pie5B2 pie5C2 pie5D2 pie6B2 pie6C2 pie6D2 pie6E2 pie7A2 pie7C2 pie7D2 pie7E2 pie8B2 
    pie8C2 pie8D2 pie8E2 pie9A2 pie9B2 pie9C2 pie9E2 pie10A2 pie10B2 pie10C2 pie10E2
  /INDEX=comparison
  /KEEP=ResponseId
  /NULL=DROP.

RECODE comparison (1=1) (2=1) (3=1) (4=1) (5=1) (6=1) (7=1) (8=1) (9=1) (10=1) (11=1) (12=1) (13=1) 
    (14=1) (15=1) (16=1) (17=1) (18=1) (19=1) (20=1) (21=1) (22=1) (23=1) (24=1) (25=1) (26=1) (27=1) 
    (28=1) (29=1) (30=1) (31=1) (32=1) (33=1) (34=1) (35=1) (36=1) (37=1) (38=1) (39=1) (40=1)
    (ELSE=2).
EXECUTE.

** SAVE NEW DATASET ** - repData_V4-recoded

* normality assumption tests (histograms)
    
GRAPH
  /HISTOGRAM(NORMAL)=bar.

GRAPH
  /HISTOGRAM(NORMAL)=pie.

* mixed model ANOVA

GLM bar pie BY comparison
  /WSFACTOR=encoding 2 Polynomial 
  /MEASURE=error 
  /METHOD=SSTYPE(3)
  /SAVE=PRED SEPRED RESID ZRESID COOK
  /PLOT=PROFILE(encoding*comparison) TYPE=BAR ERRORBAR=CI MEANREFERENCE=NO
  /EMMEANS=TABLES(comparison) COMPARE ADJ(LSD)
  /EMMEANS=TABLES(encoding) COMPARE ADJ(LSD)
  /EMMEANS=TABLES(comparison*encoding) COMPARE(comparison) ADJ(LSD)
  /EMMEANS=TABLES(comparison*encoding) COMPARE(encoding) ADJ(LSD)
  /PRINT=DESCRIPTIVE ETASQ OPOWER HOMOGENEITY 
  /CRITERIA=ALPHA(.05)
  /WSDESIGN=encoding 
  /DESIGN=comparison.

** SAVE NEW DATASET ** - repData_V5-analysis
    
* making error bar graphs
    
* comparing comparison types for each encoding level
   
GRAPH
  /ERRORBAR(CI 95)=bar BY comparison.

GRAPH
  /ERRORBAR(CI 95)=pie BY comparison.

* comparing encoding types for each comparison level
    
SORT CASES  BY comparison.
SPLIT FILE LAYERED BY comparison.

GRAPH
  /ERRORBAR(CI 95)=bar pie
  /MISSING=LISTWISE.

SPLIT FILE OFF.

* all-in-one graph
    
GRAPH
  /ERRORBAR(CI 95)=bar pie
  /PANEL COLVAR=comparison COLOP=CROSS
  /MISSING=LISTWISE.

* format from repData_V3-computed

* pivot long

VARSTOCASES
  /MAKE error FROM  bar1A1 pie1A1 bar1B1 pie1B1 bar1C1 pie1C1 bar1D1 pie1D1 bar2A1 pie2A1 bar2B1 pie2B1 bar2D1 pie2D1 
    bar2E1 pie2E1 bar3A1 pie3A1 bar3B1 pie3B1 bar3C1 pie3C1 bar3D1 pie3D1 bar4B1 pie4B1 bar4C1 pie4C1 
    bar4D1 pie4D1 bar4E1 pie4E1 bar5A1 pie5A1 bar5B1 pie5B1 bar5C1 pie5C1 bar5D1 pie5D1 bar6B1 pie6B1 
    bar6C1 pie6C1 bar6D1 pie6D1 bar6E1 pie6E1 bar7A1 pie7A1 bar7C1 pie7C1 bar7D1 pie7D1 bar7E1 pie7E1 
    bar8B1 pie8B1 bar8C1 pie8C1 bar8D1 pie8D1 bar8E1 pie8E1 bar9A1 pie9A1 bar9B1 pie9B1 bar9C1 pie9C1 
    bar9E1 pie9E1 bar10A1 pie10A1 bar10B1 pie10B1 bar10C1 pie10C1 bar10E1 pie10E1 bar1A2 pie1A2 bar1B2 
    pie1B2 bar1C2 pie1C2 bar1D2 pie1D2 bar2A2 pie2A2 bar2B2 pie2B2 bar2D2 pie2D2 bar2E2 pie2E2 bar3A2 
    pie3A2 bar3B2 pie3B2 bar3C2 pie3C2 bar3D2 pie3D2 bar4B2 pie4B2 bar4C2 pie4C2 bar4D2 pie4D2 bar4E2 
    pie4E2 bar5A2 pie5A2 bar5B2 pie5B2 bar5C2 pie5C2 bar5D2 pie5D2 bar6B2 pie6B2 bar6C2 pie6C2 bar6D2 
    pie6D2 bar6E2 pie6E2 bar7A2 pie7A2 bar7C2 pie7C2 bar7D2 pie7D2 bar7E2 pie7E2 bar8B2 pie8B2 bar8C2 
    pie8C2 bar8D2 pie8D2 bar8E2 pie8E2 bar9A2 pie9A2 bar9B2 pie9B2 bar9C2 pie9C2 bar9E2 pie9E2 bar10A2 
    pie10A2 bar10B2 pie10B2 bar10C2 pie10C2 bar10E2 pie10E2
  /INDEX=question(error)
  /KEEP=ResponseId 
  /NULL=DROP.

*** merge with trueRatios.sav ***
   
** SAVE NEW DATASET ** - repData_V6-graphs

* making scatterplots (use filters for each graph)

GRAPH
  /SCATTERPLOT(BIVAR)=ratio WITH error
  /MISSING=LISTWISE.


* (Chart Builder) - error means by ratio

GGRAPH
  /GRAPHDATASET NAME="graphdataset" VARIABLES=ratio MEAN(error)[name="MEAN_error"] MISSING=LISTWISE 
    REPORTMISSING=NO
  /GRAPHSPEC SOURCE=INLINE
  /FITLINE TOTAL=YES.
BEGIN GPL
  SOURCE: s=userSource(id("graphdataset"))
  DATA: ratio=col(source(s), name("ratio"))
  DATA: MEAN_error=col(source(s), name("MEAN_error"))
  GUIDE: axis(dim(1), label("ratio"))
  GUIDE: axis(dim(2), label("Mean error"))
  ELEMENT: point(position(ratio*MEAN_error))
END GPL.

** bar, part-to-part

USE ALL.
COMPUTE filter_$=(CHAR.INDEX(question,'bar') = 1  & (CHAR.RINDEX(question,'1') = 6  OR 
    CHAR.RINDEX(question,'1') = 7)).
VARIABLE LABELS filter_$ "CHAR.INDEX(question,'bar') = 1  & (CHAR.RINDEX(question,'1') = 6  OR "+
    "CHAR.RINDEX(question,'1') = 7) (FILTER)".
VALUE LABELS filter_$ 0 'Not Selected' 1 'Selected'.
FORMATS filter_$ (f1.0).
FILTER BY filter_$.
EXECUTE.
_SLINE OFF.

** pie, part-to-part

USE ALL.
COMPUTE filter_$=(CHAR.INDEX(question,'pie') = 1  & (CHAR.RINDEX(question,'1') = 6  OR 
    CHAR.RINDEX(question,'1') = 7)).
VARIABLE LABELS filter_$ "CHAR.INDEX(question,'pie') = 1  & (CHAR.RINDEX(question,'1') = 6  OR "+
    "CHAR.RINDEX(question,'1') = 7) (FILTER)".
VALUE LABELS filter_$ 0 'Not Selected' 1 'Selected'.
FORMATS filter_$ (f1.0).
FILTER BY filter_$.
EXECUTE.
_SLINE OFF.

** bar, part-to-whole

USE ALL.
COMPUTE filter_$=(CHAR.INDEX(question,'bar') = 1  & (CHAR.RINDEX(question,'2') = 6  OR 
    CHAR.RINDEX(question,'2') = 7)).
VARIABLE LABELS filter_$ "CHAR.INDEX(question,'bar') = 1  & (CHAR.RINDEX(question,'2') = 6  OR "+
    "CHAR.RINDEX(question,'2') = 7) (FILTER)".
VALUE LABELS filter_$ 0 'Not Selected' 1 'Selected'.
FORMATS filter_$ (f1.0).
FILTER BY filter_$.
EXECUTE.
_SLINE OFF.

** pie, part-to-whole

USE ALL.
COMPUTE filter_$=(CHAR.INDEX(question,'pie') = 1  & (CHAR.RINDEX(question,'2') = 6  OR 
    CHAR.RINDEX(question,'2') = 7)).
VARIABLE LABELS filter_$ "CHAR.INDEX(question,'pie') = 1  & (CHAR.RINDEX(question,'2') = 6  OR "+
    "CHAR.RINDEX(question,'2') = 7) (FILTER)".
VALUE LABELS filter_$ 0 'Not Selected' 1 'Selected'.
FORMATS filter_$ (f1.0).
FILTER BY filter_$.
EXECUTE.
_SLINE OFF.

** filter reset (for in-between)

FILTER OFF.
USE ALL.
EXECUTE.
_SLINE OFF.
