# encoding: UTF-8
# Questions RE disease type/subtype
survey "Disease Type", :default_mandatory => false do

  section "Type of cancer" do
    label "What type of cancer do you have?"
    
    q_1 "Where is the cancer located?", :pick => :one, :display_type => :dropdown
    a_1 "Brain"
    a_2 "Breast"
    a_3 "Cervical"
    a_4 "Colon (large bowel)"
    a_5 "Lung"
    a_6 "Prostate"
    a_7 "Rectal"
    
    q_2a "What type of brain cancer is it?", :pick => :one
    a_1 "Astrocytoma"
    a_2 "Brain stem glioma"
    a_3 "Central nervous system atypical teratoid/rhabdoid tumor"
    a_4 "Central nervous system embryonal or germ cell tumor"
    a_5 "Craniopharyngioma"
    a_6 "Ependymoma"
    a_7 "Esthesioneuroblastoma"
    a_8 "Gliobastoma multiforme"
    a_9 "Primary central nervous system lymphoma"
    a_10 :other
    dependency :rule => "A"
    condition_A :q_1, "==", :a_1
    
    q_2b "What type of breast cancer is it?", :pick => :one
    a_1 "Ductal adenocarcinoma"
    a_2 "Lobular carcinoma"
    a_3 "Ductal carcinoma in situ (DCIS)"
    a_4 :other
    dependency :rule => "A"
    condition_A :q_1, "==", :a_2

    q_2c "What type of colon cancer is it?", :pick => :one
    a_1 "Adenocarcinoma"
    a_2 "Squamous cell carcinoma"
    a_3 :other
    dependency :rule => "A"
    condition_A :q_1, "==", :a_4
    
    q_2d "What type of lung cancer is it?", :pick => :one
    a_1 "Small cell"
    a_2 "Non-small cell"
    a_3 :other
    dependency :rule => "A"
    condition_A :q_1, "==", :a_5
    
    q_2d2 "Is that adenocarcinoma or squamous cell?", :pick => :one, :display_type => :dropdown
    a_1 "Adenocarcinoma"
    a_2 "Squamous cell"
    dependency :rule => "A"
    condition_A :q_2d, "==", :a_2
    
    q_2e "What type of prostate cancer is it?", :pick => :one
    a_1 "Adenocarcinoma"
    a_2 :other
    dependency :rule => "A"
    condition_A :q_1, "==", :a_6
    
    q_2f "What type of rectal cancer is it?", :pick => :one
    a_1 "Adenocarcinoma"
    a_2 "Squamous"
    a_3 :other
    dependency :rule => "A"
    condition_A :q_1, "==", :a_7
    
    q_3a "What area(s) of the brain are affected?", :pick => :any
    a_1 "Frontal lobe"
    a_2 "Parietal lobe"
    a_3 "Temporal lobe"
    a_4 "Occipital lobe"
    a_5 "Cerebellum"
    a_6 "Pons"
    a_7 "Midbrain"
    a_8 "Medulla"
    a_9 :other
    dependency :rule => "A"
    condition_A :q_1, "==", :a_1
    
    q_3b "What area(s) of the colon are affected?", :pick => :any
    a_1 "Cecum"
    a_2 "Ascending colon"
    a_3 "Hepatic flexure"
    a_4 "Transverse colon"
    a_5 "Descending colon"
    a_6 "Splenic flexure"
    a_7 "Sigmoid colon"
    a_8 "Rectum"
    a_9 :other
    dependency :rule => "A"
    condition_A :q_1, "==", :a_4
    
    q_4 "Do you know the stage of your cancer?", :pick => :one
    a_1 "Yes"
    a_2 "No"
    
    q_5 "Tumor size:", :pick => :one
    a_1 "TX (tumor cannot be evaluated)"
    a_2 "T0 (no signs of tumor)"
    a_3 "Tis (carcinoma in situ)"
    a_3 "T1"
    a_4 "T2"
    a_5 "T3"
    a_6 "T4"
    a_7 "Specify size instead"
    dependency :rule => "A"
    condition_A :q_4, "==", :a_1
    
    q_6 "Size:"
    a :integer
    validation :rule => "A"
    condition_A ">=", :integer_value => 0
    dependency :rule => "B"
    condition_B :q_5, "==", :a_7
    
    q_7 "Units:", :pick => :one
    a_1 "Inches"
    a_2 "Centimeters"
    dependency :rule => "A"
    condition_A :q_5, "==", :a_7
    
    q_8 "Lymph nodes:", :pick => :one
    a_1 "NX (regional lymph nodes cannot be evaluated)"
    a_2 "N0 (no regional lymph node involvement)"
    a_3 "N1"
    a_4 "N2"
    a_5 "N3"
    a_6 "Specify number of positive lymph nodes instead"
    dependency :rule => "A"
    condition_A :q_4, "==", :a_1
    
    q_9 "Number of positive lymph nodes:"
    a :integer
    validation :rule => "A"
    condition_A ">=", :integer_value => 0
    dependency :rule => "B"
    condition_B :q_8, "==", :a6
    
    q_10 "Distant metastasis:", :pick => :one
    a_1 "MX (distant metastasis cannot be evaluated)"
    a_2 "M0 (no distant metastasis)"
    a_3 "M1 (distant metastasis is present)"
    dependency :rule => "A"
    condition_A :q_4, "==", :a_1
    
    q_11 "Tumor grade:", :pick => :one
    a_1 "GX (grade cannot be assessed)"
    a_2 "G1 (well differentiated, low grade)"
    a_3 "G2 (moderately differentiated, intermediate grade)"
    a_4 "G3 (poorly differentiated, high grade)"
    a_5 "G4 (undifferentiated, high grade)"
    dependency :rule => "A"
    condition_A :q_4, "==", :a_1
    
  end
end
