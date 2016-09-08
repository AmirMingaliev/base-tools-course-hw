require "rails_helper"

describe Feedbacks::Send do
  describe ".call" do
    before do
      allow(FeedbackMailer).to receive(:new_feedback).and_return(mailer)

      described_class.call(feedback: feedback)
    end

    let(:mailer) { instance_double("ActionMailer::MessageDelivery", deliver_now: true) }
    let(:feedback) { Feedback.new(feedback_params) }

    context "when feedback is invalid" do
      let(:feedback_params) { {} }

      it "doesn't send the feedback" do
        expect(FeedbackMailer).not_to have_received(:new_feedback)
      end
    end

    context "when feedback is valid" do
      let(:feedback_params) do
        {
          name: "Homer",
          email: "homer.simpson@example.com",
          body: "Awesome app!"
        }
      end

      it "sends the feedback" do
        expect(FeedbackMailer).to have_received(:new_feedback)
      end
    end
  end
end
