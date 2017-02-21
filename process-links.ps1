[xml]$links = Get-Content c:\users\andre_000\desktop\links.xml
$tags = $links.posts.post.tag

$allTags = @{}

foreach($tagGroup in $tags){
	foreach($tag in $tagGroup.split(" ")){
		if(!$allTags[$tag]){
			$allTags[$tag] = 0
		}
		$allTags[$tag] = $allTags[$tag]+1
	}
}

$alltags.GetEnumerator() | select key,value | sort value

