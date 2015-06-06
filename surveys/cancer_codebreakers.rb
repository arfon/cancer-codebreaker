# encoding: UTF-8
# Question#is_mandatory is now false by default. The default_mandatory option allows you to set
#   is_mandatory for all questions in a survey.
survey "Cancer Codebreakers", :default_mandatory => false do

  section "Introductory questions" do
    # A label is a question that accepts no answers
    label "These questions are designed to help us understand what type of cancer you have"

    # Top-level categorizations
    question "What type of cancer do you have?", :pick => :one
    answer "Brain"
    answer "Breast"
    answer "Cervical"
    answer "Colon (large bowel)"
    answer "Lung"
    answer "Prostate"
    answer "Rectal"

    # Diagnosis date
    question "How old were you when you were diagnosed with cancer"
    answer "I was diagnosed on", :date

    # What characteristics do you have?
    question "What characteristics does your cancer have?", :pick => :one
    a "EGFR"
    a "ALK"
    a "ROS1"
    a "KRAS"
    a "BRAF"
    a :other, :string
  end
end
