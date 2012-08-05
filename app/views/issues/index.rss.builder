xml.instruct! :xml, version: "1.0" 
xml.rss version: "2.0" do
  xml.channel do
    xml.title "Our issues"
    xml.description "Latest issues, come and get them!"
    xml.link issues_url

    @issues.each do |issue|
      xml.item do
        xml.title issue.title
        xml.pubDate issue.created_at.to_s(:rfc822)
        xml.description issue.description
      end
    end
  end
end
