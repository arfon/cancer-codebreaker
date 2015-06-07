# encoding: UTF-8
# Questions RE disease type/subtype
survey "Disease Characteristics", :default_mandatory => false do

  section "Genetic mutations" do
    label "Genetic mutations"

    q_1 "EGFR", :pick => :one
    a_1 "Normal (wildtype)"
    a_2 "Mutated"

    q_1b "Type of mutation (if known)"
    a :string
    dependency :rule => "A"
    condition_A :q_1, "==", :a_2

    q_2 "ALK", :pick => :one
    a_1 "Normal (wildtype)"
    a_2 "Mutated"

    q_2b "Type of mutation (if known)"
    a :string
    dependency :rule => "A"
    condition_A :q_2, "==", :a_2

    q_3 "ROS1", :pick => :one
    a_1 "Normal (wildtype)"
    a_2 "Mutated"

    q_3b "Type of mutation (if known)"
    a :string
    dependency :rule => "A"
    condition_A :q_3, "==", :a_2

    q_4 "KRAS", :pick => :one
    a_1 "Normal (wildtype)"
    a_2 "Mutated"

    q_4b "Type of mutation (if known)"
    a :string
    dependency :rule => "A"
    condition_A :q_4, "==", :a_2

    q_5 "BRAF", :pick => :one
    a_1 "Normal (wildtype)"
    a_2 "Mutated"

    q_5b "Type of mutation (if known)"
    a :string
    dependency :rule => "A"
    condition_A :q_5, "==", :a_2

  end

  section "Tumor characteristics" do
    label "Tumor characteristics"

    q_6 "ER (estrogen receptor)", :pick => :one
    a_1 "Negative"
    a_2 "Weakly positive"
    a_3 "Positive"

    q_6b "ER Allred score (0-8)"
    a :integer
    validation :rule => "A and B"
    condition_A ">=", :integer_value => 0
    condition_B "<=", :integer_value => 8

    q_7 "PR (estrogen receptor)", :pick => :one
    a_1 "Negative"
    a_2 "Weakly positive"
    a_3 "Positive"

    q_7b "PR Allred score (0-8)"
    a :integer
    validation :rule => "A and B"
    condition_A ">=", :integer_value => 0
    condition_B "<=", :integer_value => 8

    q_8 "Her2/neu", :pick => :one
    a_1 "Negative"
    a_2 "Positive"

    q_8a "Immunohistochemistry:", :pick => :one
    a_1 "2+ (borderline)"
    a_2 "3+ (positive)"
    dependency :rule => "A"
    condition_A :q_8, "==", :a_2

    q_8b "FISH:", :pick => :one
    a_1 "Negative"
    a_2 "Positive"
    dependency :rule => "A"
    condition_A :q_8, "==", :a_2

    q_9 "Ki-67 (percent)"
    a :integer
    validation :rule => "A and B"
    condition_A ">=", :integer_value => 0
    condition_B "<=", :integer_value => 100

    q_10 "CIMP", :pick => :one
    a_1 "No"
    a_2 "Yes"

    q_11 "MMR/MSI", :pick => :one
    a_1 "Stable"
    a_2 "Low"
    a_3 "High"
    a_4 "No evidence of microsatellite instability"

    q_12 "MGMT methylation", :pick => :one
    a_1 "No"
    a_2 "Yes"

    q_13 "Gleason score (2-10)"
    a :string
    validation :rule => "A"
    condition_A "=~", :regexp => "([2-9]|10)|([0-9][0-9]?\+[0-9][0-9]?)"

    q_14 "PSA (at diagnosis)"
    a :string
    validation :rule => "A"
    condition_A "=~", :regexp => "[0-9]+\.[0-9]+"

  end

  section "Virus testing" do
    label "Virus testing"

    q_15 "HIV (human immunodeficiency virus)"
    a_1 "Negative"
    a_2 "Positive"
    a_3 "Untested/Unknown"

    q_16 "HPV (human papilloma virus)"
    a_1 "Negative"
    a_2 "Positive"
    a_3 "Untested/Unknown"
  end
end
