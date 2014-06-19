###
 * sote
 * https://github.com/Leny/sote
 *
 * JS/COFFEE Document - /sote.js - main entry point, commander setup and runner
 *
 * Copyright (c) 2014 Leny
 * Licensed under the MIT license.
###

"use strict"

program = require "commander"
store = require "./store.js"
chalk = require "chalk"
table = require "text-table"
error = chalk.bold.red
success = chalk.bold.green

pkg = require "../package.json"

NO_COMMAND_SPECIFIED = process.argv.length is 2

program.version pkg.version

# list command
program
    .command "list"
    .description "Lists the paths stored by sote."
    .action ->
        aProperties = ( [ sProperty, sValue ] for sProperty, sValue of store.all() )
        unless aProperties.length
            console.log "There's no path in the store (yet)"
            process.exit 0
        aProperties.unshift [ "----", "----" ]
        aProperties.unshift [ "name", "path" ]
        console.log table aProperties
        process.exit 0

# show command
program
    .command "show <name>"
    .description "Shows the path corresponding to the given name."
    .action ( sName ) ->
        console.log "show: #{ sName }"

# add command
program
    .command "add <name> [path]"
    .description "Add the path to the store with the given name. If no path is given, use current path."
    .action ( sName, sPath = no ) ->
        sPath = process.cwd() unless sPath
        store.set sName, sPath
        store.save()
        console.log chalk.cyan( sPath ), "stored at name \"#{ sName }\""
        process.exit 0

# remove command
program
    .command "remove <name>"
    .description "Remove the path stored by sote at the given name."
    .action ( sName ) ->
        console.log "remove: #{ sName }"

# clear command
program
    .command "clear"
    .description "Clear all the paths stored by sote. Ask for confirmation before acting."
    .action ->
        console.log "clear"

# jump (default) command
program
    .command "*"
    .description "Jumps to the path corresponding to the given name."
    .action ( sName ) ->
        console.log "jump: #{ sName }"

program.parse process.argv

program.help() if NO_COMMAND_SPECIFIED
