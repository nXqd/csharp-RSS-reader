using System;

namespace App_Code.model {
    /// <summary>
    /// Summary description for FeedItem
    /// </summary>
    [Serializable]
    public class FeedItem
    {
        public String Source { get; set; }
        public String Title { get; set; }
        public String Link { get; set; }
        public DateTime Date { get; set; }
        public string Color { get; set; }
    }
}