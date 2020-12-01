# days_voice_recognition
Matlab code for days of the week voice recognition classifier
- Construction of a database of 525 mp3 mono recordings of the 7 days of the week
- Implementation of 2 classifiers (Kmeans / KPPV) for days recognition

--> 3 features for analysis: fundamental pitch (f0), energy (FFT), Mel-Frequency Cepstral Coefficients (MFCC)

--> 8 statistics for f0 and energy: mean, maximum, range, variance, median, 1st and 3rd quartiles, mean absolute of local derivative
- Results: tests for partial databases (2 or 3 different days) and total database (7 days), computation of recognition rate

--> 2 days: 96%

--> 3 days: 80%

--> 7 days: 50% (to improve)
