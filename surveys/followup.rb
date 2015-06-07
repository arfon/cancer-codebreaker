# encoding: UTF-8
# Questions RE follow-up
survey "Follow-up", :default_mandatory => false do

  section "Follow-up" do
    label "How are you doing?"

    q_1 "Enter date:"
    a_1 :date

    q_2 "Please select the category that most closely matches your current situation:"
    a_1 "I am still being treated for cancer"
    a_2 "I have chosen to stop cancer treatment"
    a_3 "I have no evidence of cancer.  I am being monitored."

    q_3 "Have you had any scans since your last follow-up?"
    a_1 "No"
    a_2 "Yes"

    q_4 "Please specify both type of scan and result"
    a_1 :test
    dependency :rule => "A"
    condition_A :q_3, "==", :a_2

    q_5 "Have you had any biopsies since your last follow-up?"
    a_1 "No"
    a_2 "Yes"

    q_6 "Please specify location of biopsy and result"
    a_1 :test
    dependency :rule => "A"
    condition_A :q_5, "==", :a_2

  end
end
