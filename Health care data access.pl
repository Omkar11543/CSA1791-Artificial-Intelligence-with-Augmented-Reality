patient(1, 'John Doe', 32, 'Male', 'Asthma').
patient(2, 'Jane Doe', 28, 'Female', 'Diabetes').
patient(3, 'Jim Brown', 45, 'Male', 'Heart disease').
patient(4, 'Jennifer Smith', 38, 'Female', 'Asthma').

condition(1, 'Asthma', 'Respiratory condition caused by inflammation of the airways.').
condition(2, 'Diabetes', 'Metabolic condition characterized by high blood sugar levels.').
condition(3, 'Heart disease', 'Condition affecting the heart and blood vessels.').

% Rule to find the age of a patient by patient ID
age(ID, Age) :- patient(ID, _, Age, _, _).

% Rule to find the gender of a patient by patient ID
gender(ID, Gender) :- patient(ID, _, _, Gender, _).

% Rule to find the condition of a patient by patient ID
condition(ID, Condition) :- patient(ID, _, _, _, Condition).

% Rule to find the description of a condition by its name
description(Condition, Description) :- condition(ID, Condition, Description).
