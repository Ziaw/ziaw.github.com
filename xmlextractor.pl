use XML::XPath;
use XML::XPath::XMLParser;
use Encode;

my $xp = XML::XPath->new(filename => 'text.xml');
    
my $nodeset = $xp->find('/wiki/text');
    
foreach $node ($nodeset->get_nodelist) {
   my $title = $node->findvalue("old_title");
   my $text = $node->findvalue("old_text");
   my $user = $node->findvalue("old_user");
   if ($title && $user)
   {
     open FILE, ">$title.mediawiki";
     print FILE $text;
     close FILE;
   }
}