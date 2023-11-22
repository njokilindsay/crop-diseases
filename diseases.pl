%Prolog Expert System for Wheat Diseases and their Diagnosis

%Diseases
disease(leaf_rust).
disease(stripe_rust).
disease(septoria_leaf_blotch).
disease(fusarium_head_blight).
disease(powdery_mildew).
disease(tan_spot).
disease(common_bunt).
disease(leaf_blotch).

%Symptoms associated with each disease
symptom(leaf_rust,brown_pustules).
symptom(leaf_rust,orange_lesions).
symptom(stripe_rust,orange_stripes).
symptom(septoria_leaf_blotch,black_spots).
symptom(fusarium_head_blight,white_heads).
symptom(fusarium_head_blight,shriveled_grains).
symptom(powdery_mildew,powdery_spots).
symptom(tan_spot,dark_borders).
symptom(tan_spot,premature_aging).
symptom(common_bunt,foul_smell).
symptom(common_bunt,dark_spores).
symptom(leaf_blotch,black_lesions).
symptom(leaf_blotch,yellow_borders).

%Plantpart affected by the disease
effects(leaf_rust, leaves, brown_pustules).
effects(leaf_rust, leaves, orange_lesions).
effects(stripe_rust, leaves, orange_stripes).
effects(septoria_leaf_blotch, leaves, black_spots).
effects(fusarium_head_blight, grains, white_heads).
effects(fusarium_head_blight, grains, shriveled_grains).
effects(powdery_mildew, stems, powdery_spots).
effects(powdery_mildew, leaves, powdery_spots).
effects(tan_spot, leaves, dark_borders).
effects(tan_spot, leaves, premature_aging).
effects(common_bunt, spikes, foul_smell).
effects(common_bunt, wheat_kernels, dark_spores).
effects(leaf_blotch, leaves, black_lesions).
effects(leaf_blotch, leaves, yellow_borders).


%Rules for diagnosing diseases
diagnosis(Symptom) :-
    write('Enter symptom: '),
    read(Symptom),
    symptom(Disease, Symptom),
    write('The wheat is likely affected by '),write(Disease),nl.

detection(Plantpart, Disease) :-
    write('Enter Plantpart affected: '),
    read(Plantpart),
    write('Enter Symptom: '),
    read(Symptom),
    symptom(Disease, Symptom),
    effects(Disease, Plantpart, Symptom),
    write('The wheat is likely affected by '),write(Disease),nl.


