# SancBot discord bot for the Sanctuary Discord server
a bot created for use in `The Sanctuary`

# Commands
## General Commands

## Misc Commands
* `s.ping` - Replies with "Pong!"
## Debug Commands
* `s.pry` - spawns a pry session (WARNING: will freeze bot from responding)

# Developer Reference
## Configuration
### Environment Variables
The following variables can/must be set in the environment:
* `SANCBOT_TOKEN` (required): set this to a discord bot token
* `SANCBOT_DEBUG`: if set to true, will enable debug features in the bot (i.e. pry command)
