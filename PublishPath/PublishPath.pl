# MT::Plugin::PublishPath
# Author: Takashi Ishikawa (http://www.ana-kutsu.com/)
# Copyright (C) 2011, Takashi Ishikawa.
#
# This program is distributed under the terms of the
# GNU General Public License, version 2.


package MT::Plugin::PublishPath;
use strict;

use base qw( MT::Plugin );
use MT;
use MT::Template::Context;

my $plugin = new MT::Plugin::PublishPath({
    name => 'PublishPath',
    version => '1.0',
    description => 'Add tags to retrieve the file path which is going to generate.',
    doc_link => 'http://code.google.com/p/mt-plugin-publish-path/wiki/InstallationAndUsage',
    author_name => "Takashi Ishikawa",
    author_link => "http://www.ana-kutsu.com/"
});
MT->add_plugin($plugin);

sub init_registry {
	my $plugin = shift;
	$plugin->registry({
		callbacks => {
			'build_file_filter'
				=> \&build_file_filter,
		},
		tags => {
			function => {
				'PublishPath' => \&publish_path,
				'PublishUrl' => \&publish_url,
			},
		},
	});
}

sub build_file_filter {
	my ($objCallback, %listArg) = @_;
	my $objContext = $listArg{'Context'};
	my $objFileInfo = $listArg{'FileInfo'};
	my $flagResult = 1;
	
	if ($objFileInfo) {
		$objContext->stash('publish_path', $objFileInfo->file_path);
		$objContext->stash('publish_url', $objFileInfo->url);
	}
	
	return $flagResult;
};

sub publish_path {
	my ($objContext, $listArg) = @_;
	my $strPublishPath = $objContext->stash('publish_path');
	my $strResult = '';
	
	if ($strPublishPath) {
		$strResult = $strPublishPath;
	}
	
	return $strResult;
};

sub publish_url {
	my ($objContext, $listArg) = @_;
	my $strPublishUrl = $objContext->stash('publish_url');
	my $strResult = '';
	
	if ($strPublishUrl) {
		$strResult = $strPublishUrl;
	}
	
	return $strResult;
};

1;
