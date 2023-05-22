import 'Owner.dart';
import 'License.dart';
import 'dart:convert';
Items itemsFromJson(String str) => Items.fromJson(json.decode(str));
String itemsToJson(Items data) => json.encode(data.toJson());
class Items {
  Items({
      this.id, 
      this.nodeId, 
      this.name, 
      this.fullName, 
      this.private, 
      this.owner, 
      this.htmlUrl, 
      this.description, 
      this.fork, 
      this.url, 
      this.forksUrl, 
      this.keysUrl, 
      this.collaboratorsUrl, 
      this.teamsUrl, 
      this.hooksUrl, 
      this.issueEventsUrl, 
      this.eventsUrl, 
      this.assigneesUrl, 
      this.branchesUrl, 
      this.tagsUrl, 
      this.blobsUrl, 
      this.gitTagsUrl, 
      this.gitRefsUrl, 
      this.treesUrl, 
      this.statusesUrl, 
      this.languagesUrl, 
      this.stargazersUrl, 
      this.contributorsUrl, 
      this.subscribersUrl, 
      this.subscriptionUrl, 
      this.commitsUrl, 
      this.gitCommitsUrl, 
      this.commentsUrl, 
      this.issueCommentUrl, 
      this.contentsUrl, 
      this.compareUrl, 
      this.mergesUrl, 
      this.archiveUrl, 
      this.downloadsUrl, 
      this.issuesUrl, 
      this.pullsUrl, 
      this.milestonesUrl, 
      this.notificationsUrl, 
      this.labelsUrl, 
      this.releasesUrl, 
      this.deploymentsUrl, 
      this.createdAt, 
      this.updatedAt, 
      this.pushedAt, 
      this.gitUrl, 
      this.sshUrl, 
      this.cloneUrl, 
      this.svnUrl, 
      this.homepage, 
      this.size, 
      this.stargazersCount, 
      this.watchersCount, 
      this.language, 
      this.hasIssues, 
      this.hasProjects, 
      this.hasDownloads, 
      this.hasWiki, 
      this.hasPages, 
      this.hasDiscussions, 
      this.forksCount, 
      this.mirrorUrl, 
      this.archived, 
      this.disabled, 
      this.openIssuesCount, 
      this.license, 
      this.allowForking, 
      this.isTemplate, 
      this.webCommitSignoffRequired, 
      this.topics, 
      this.visibility, 
      this.forks, 
      this.openIssues, 
      this.watchers, 
      this.defaultBranch, 
      this.score,});

  Items.fromJson(dynamic json) {
    id = json['id'];
    nodeId = json['node_id'];
    name = json['name'];
    fullName = json['full_name'];
    private = json['private'];
    owner = json['owner'] != null ? Owner.fromJson(json['owner']) : null;
    htmlUrl = json['html_url'];
    description = json['description'];
    fork = json['fork'];
    url = json['url'];
    forksUrl = json['forks_url'];
    keysUrl = json['keys_url'];
    collaboratorsUrl = json['collaborators_url'];
    teamsUrl = json['teams_url'];
    hooksUrl = json['hooks_url'];
    issueEventsUrl = json['issue_events_url'];
    eventsUrl = json['events_url'];
    assigneesUrl = json['assignees_url'];
    branchesUrl = json['branches_url'];
    tagsUrl = json['tags_url'];
    blobsUrl = json['blobs_url'];
    gitTagsUrl = json['git_tags_url'];
    gitRefsUrl = json['git_refs_url'];
    treesUrl = json['trees_url'];
    statusesUrl = json['statuses_url'];
    languagesUrl = json['languages_url'];
    stargazersUrl = json['stargazers_url'];
    contributorsUrl = json['contributors_url'];
    subscribersUrl = json['subscribers_url'];
    subscriptionUrl = json['subscription_url'];
    commitsUrl = json['commits_url'];
    gitCommitsUrl = json['git_commits_url'];
    commentsUrl = json['comments_url'];
    issueCommentUrl = json['issue_comment_url'];
    contentsUrl = json['contents_url'];
    compareUrl = json['compare_url'];
    mergesUrl = json['merges_url'];
    archiveUrl = json['archive_url'];
    downloadsUrl = json['downloads_url'];
    issuesUrl = json['issues_url'];
    pullsUrl = json['pulls_url'];
    milestonesUrl = json['milestones_url'];
    notificationsUrl = json['notifications_url'];
    labelsUrl = json['labels_url'];
    releasesUrl = json['releases_url'];
    deploymentsUrl = json['deployments_url'];
    createdAt = json['created_at'];
    updatedAt = json['updated_at'];
    pushedAt = json['pushed_at'];
    gitUrl = json['git_url'];
    sshUrl = json['ssh_url'];
    cloneUrl = json['clone_url'];
    svnUrl = json['svn_url'];
    homepage = json['homepage'];
    size = json['size'];
    stargazersCount = json['stargazers_count'];
    watchersCount = json['watchers_count'];
    language = json['language'];
    hasIssues = json['has_issues'];
    hasProjects = json['has_projects'];
    hasDownloads = json['has_downloads'];
    hasWiki = json['has_wiki'];
    hasPages = json['has_pages'];
    hasDiscussions = json['has_discussions'];
    forksCount = json['forks_count'];
    mirrorUrl = json['mirror_url'];
    archived = json['archived'];
    disabled = json['disabled'];
    openIssuesCount = json['open_issues_count'];
    license = json['license'] != null ? License.fromJson(json['license']) : null;
    allowForking = json['allow_forking'];
    isTemplate = json['is_template'];
    webCommitSignoffRequired = json['web_commit_signoff_required'];
    topics = json['topics'] != null ? json['topics'].cast<String>() : [];
    visibility = json['visibility'];
    forks = json['forks'];
    openIssues = json['open_issues'];
    watchers = json['watchers'];
    defaultBranch = json['default_branch'];
    score = json['score'];
  }
  int? id;
  String? nodeId;
  String? name;
  String? fullName;
  bool? private;
  Owner? owner;
  String? htmlUrl;
  String? description;
  bool? fork;
  String? url;
  String? forksUrl;
  String? keysUrl;
  String? collaboratorsUrl;
  String? teamsUrl;
  String? hooksUrl;
  String? issueEventsUrl;
  String? eventsUrl;
  String? assigneesUrl;
  String? branchesUrl;
  String? tagsUrl;
  String? blobsUrl;
  String? gitTagsUrl;
  String? gitRefsUrl;
  String? treesUrl;
  String? statusesUrl;
  String? languagesUrl;
  String? stargazersUrl;
  String? contributorsUrl;
  String? subscribersUrl;
  String? subscriptionUrl;
  String? commitsUrl;
  String? gitCommitsUrl;
  String? commentsUrl;
  String? issueCommentUrl;
  String? contentsUrl;
  String? compareUrl;
  String? mergesUrl;
  String? archiveUrl;
  String? downloadsUrl;
  String? issuesUrl;
  String? pullsUrl;
  String? milestonesUrl;
  String? notificationsUrl;
  String? labelsUrl;
  String? releasesUrl;
  String? deploymentsUrl;
  String? createdAt;
  String? updatedAt;
  String? pushedAt;
  String? gitUrl;
  String? sshUrl;
  String? cloneUrl;
  String? svnUrl;
  String? homepage;
  int? size;
  int? stargazersCount;
  int? watchersCount;
  String? language;
  bool? hasIssues;
  bool? hasProjects;
  bool? hasDownloads;
  bool? hasWiki;
  bool? hasPages;
  bool? hasDiscussions;
  int? forksCount;
  dynamic mirrorUrl;
  bool? archived;
  bool? disabled;
  int? openIssuesCount;
  License? license;
  bool? allowForking;
  bool? isTemplate;
  bool? webCommitSignoffRequired;
  List<String>? topics;
  String? visibility;
  int? forks;
  int? openIssues;
  int? watchers;
  String? defaultBranch;
  double? score;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['id'] = id;
    map['node_id'] = nodeId;
    map['name'] = name;
    map['full_name'] = fullName;
    map['private'] = private;
    if (owner != null) {
      map['owner'] = owner?.toJson();
    }
    map['html_url'] = htmlUrl;
    map['description'] = description;
    map['fork'] = fork;
    map['url'] = url;
    map['forks_url'] = forksUrl;
    map['keys_url'] = keysUrl;
    map['collaborators_url'] = collaboratorsUrl;
    map['teams_url'] = teamsUrl;
    map['hooks_url'] = hooksUrl;
    map['issue_events_url'] = issueEventsUrl;
    map['events_url'] = eventsUrl;
    map['assignees_url'] = assigneesUrl;
    map['branches_url'] = branchesUrl;
    map['tags_url'] = tagsUrl;
    map['blobs_url'] = blobsUrl;
    map['git_tags_url'] = gitTagsUrl;
    map['git_refs_url'] = gitRefsUrl;
    map['trees_url'] = treesUrl;
    map['statuses_url'] = statusesUrl;
    map['languages_url'] = languagesUrl;
    map['stargazers_url'] = stargazersUrl;
    map['contributors_url'] = contributorsUrl;
    map['subscribers_url'] = subscribersUrl;
    map['subscription_url'] = subscriptionUrl;
    map['commits_url'] = commitsUrl;
    map['git_commits_url'] = gitCommitsUrl;
    map['comments_url'] = commentsUrl;
    map['issue_comment_url'] = issueCommentUrl;
    map['contents_url'] = contentsUrl;
    map['compare_url'] = compareUrl;
    map['merges_url'] = mergesUrl;
    map['archive_url'] = archiveUrl;
    map['downloads_url'] = downloadsUrl;
    map['issues_url'] = issuesUrl;
    map['pulls_url'] = pullsUrl;
    map['milestones_url'] = milestonesUrl;
    map['notifications_url'] = notificationsUrl;
    map['labels_url'] = labelsUrl;
    map['releases_url'] = releasesUrl;
    map['deployments_url'] = deploymentsUrl;
    map['created_at'] = createdAt;
    map['updated_at'] = updatedAt;
    map['pushed_at'] = pushedAt;
    map['git_url'] = gitUrl;
    map['ssh_url'] = sshUrl;
    map['clone_url'] = cloneUrl;
    map['svn_url'] = svnUrl;
    map['homepage'] = homepage;
    map['size'] = size;
    map['stargazers_count'] = stargazersCount;
    map['watchers_count'] = watchersCount;
    map['language'] = language;
    map['has_issues'] = hasIssues;
    map['has_projects'] = hasProjects;
    map['has_downloads'] = hasDownloads;
    map['has_wiki'] = hasWiki;
    map['has_pages'] = hasPages;
    map['has_discussions'] = hasDiscussions;
    map['forks_count'] = forksCount;
    map['mirror_url'] = mirrorUrl;
    map['archived'] = archived;
    map['disabled'] = disabled;
    map['open_issues_count'] = openIssuesCount;
    if (license != null) {
      map['license'] = license?.toJson();
    }
    map['allow_forking'] = allowForking;
    map['is_template'] = isTemplate;
    map['web_commit_signoff_required'] = webCommitSignoffRequired;
    map['topics'] = topics;
    map['visibility'] = visibility;
    map['forks'] = forks;
    map['open_issues'] = openIssues;
    map['watchers'] = watchers;
    map['default_branch'] = defaultBranch;
    map['score'] = score;
    return map;
  }

}