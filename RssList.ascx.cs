using System;
using System.Collections.Generic;
using System.Linq;
using System.ServiceModel.Syndication;
using System.Xml;
using App_Code.model;

public partial class RssList : System.Web.UI.UserControl
{
    internal string Title = String.Empty;
    internal string Description = String.Empty;

    protected void Page_Load(object sender, EventArgs e) {
        Title = "News Union";
        Description = "Where news comoes together =)) !";

        var feedList = new List<String> {
                                            "http://www.engadget.com/rss.xml",
                                            "http://feeds.gawker.com/gizmodo/full",
                                            "http://feeds.gawker.com/gawker/full"
                                        };
        var feedItems = new List<FeedItem>();
        foreach (var feedString in feedList) {
            var reader = XmlReader.Create(feedString);
            var feed = SyndicationFeed.Load(reader);

            if (feed == null) return;
            feedItems.AddRange(feed.Items.Select(i => new FeedItem
            {
                Title = i.Title.Text,
                Link = i.Links[0].Uri.ToString(),
                Source = feed.Title.Text,
                Date = i.PublishDate.DateTime
            }).ToList());
        }

        // Sort by date
        feedItems.Sort((x,y) => DateTime.Compare(y.Date,x.Date));

        Repeater1.DataSource = feedItems;
        Repeater1.DataBind();
    }
}
