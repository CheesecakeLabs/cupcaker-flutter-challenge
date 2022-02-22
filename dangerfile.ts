import {danger, warn, fail, GitHubReviewers} from 'danger'

const big_pr_minimum_line_quantity: number = 500
const pr_minimum_reviewers_quantity: number = 3
const pr_description_minimum_characters_count: number = 15

const requested_reviewers: GitHubReviewers = danger.github.requested_reviewers
const total_requested_reviewers: number = requested_reviewers.users.length + requested_reviewers.teams.length

const jiraLinkRegex = /https:\/\/cheesecakelabs.atlassian.net\/browse\/[A-Z]{3,}\-\d+/


// No PR is too small to include a description of why you made a change
if (danger.github.pr.body.length < pr_description_minimum_characters_count) {
  fail('Please include a description of your PR changes.');
}

// Fail if the PR doesn't have at least 3 reviewers
if (total_requested_reviewers < pr_minimum_reviewers_quantity) {
  fail(`Please select at least ${pr_minimum_reviewers_quantity} reviewers for this PR.`)
}



// Make it more obvious that a PR is a work in progress and shouldn't be merged yet
if (danger.github.pr.title.includes("WIP")) {
  warn("PR is classed as Work in Progress.")
}

// Warn when there is a big PR
if (danger.git.linesOfCode.length > big_pr_minimum_line_quantity) {
  warn("This PR has too many lines. Please consider splitting this PR into smaller PRs to vacillate the review process. The reviewers thank you 🙂 ")
}

// Check that someone has been assigned to this PR
if (danger.github.pr.assignee === null) {
   warn('Please assign someone to this PR.');
}

// Check that the PR has a link to a Jira issue
if (!jiraLinkRegex.test(danger.github.pr.body)) {
    warn('Please add a link to the related Jira task to the PR description.')
}