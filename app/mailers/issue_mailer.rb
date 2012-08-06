class IssueMailer < ActionMailer::Base
  default from: "rails@issues.com"

  def issue_created(issue)
    @issue = issue
    mail subject: "A new issue was created!", to: "jose@josemota.net"
  end
end
