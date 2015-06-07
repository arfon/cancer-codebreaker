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
    
  end
end
