defmodule ENetworkDisconnectionReason do
  @moduledoc false

  use Protobuf, enum: true, syntax: :proto2, protoc_gen_elixir_version: "0.12.0"

  field :NETWORK_DISCONNECT_INVALID, 0
  field :NETWORK_DISCONNECT_SHUTDOWN, 1
  field :NETWORK_DISCONNECT_DISCONNECT_BY_USER, 2
  field :NETWORK_DISCONNECT_DISCONNECT_BY_SERVER, 3
  field :NETWORK_DISCONNECT_LOST, 4
  field :NETWORK_DISCONNECT_OVERFLOW, 5
  field :NETWORK_DISCONNECT_STEAM_BANNED, 6
  field :NETWORK_DISCONNECT_STEAM_INUSE, 7
  field :NETWORK_DISCONNECT_STEAM_TICKET, 8
  field :NETWORK_DISCONNECT_STEAM_LOGON, 9
  field :NETWORK_DISCONNECT_STEAM_AUTHCANCELLED, 10
  field :NETWORK_DISCONNECT_STEAM_AUTHALREADYUSED, 11
  field :NETWORK_DISCONNECT_STEAM_AUTHINVALID, 12
  field :NETWORK_DISCONNECT_STEAM_VACBANSTATE, 13
  field :NETWORK_DISCONNECT_STEAM_LOGGED_IN_ELSEWHERE, 14
  field :NETWORK_DISCONNECT_STEAM_VAC_CHECK_TIMEDOUT, 15
  field :NETWORK_DISCONNECT_STEAM_DROPPED, 16
  field :NETWORK_DISCONNECT_STEAM_OWNERSHIP, 17
  field :NETWORK_DISCONNECT_SERVERINFO_OVERFLOW, 18
  field :NETWORK_DISCONNECT_TICKMSG_OVERFLOW, 19
  field :NETWORK_DISCONNECT_STRINGTABLEMSG_OVERFLOW, 20
  field :NETWORK_DISCONNECT_DELTAENTMSG_OVERFLOW, 21
  field :NETWORK_DISCONNECT_TEMPENTMSG_OVERFLOW, 22
  field :NETWORK_DISCONNECT_SOUNDSMSG_OVERFLOW, 23
  field :NETWORK_DISCONNECT_SNAPSHOTOVERFLOW, 24
  field :NETWORK_DISCONNECT_SNAPSHOTERROR, 25
  field :NETWORK_DISCONNECT_RELIABLEOVERFLOW, 26
  field :NETWORK_DISCONNECT_BADDELTATICK, 27
  field :NETWORK_DISCONNECT_NOMORESPLITS, 28
  field :NETWORK_DISCONNECT_TIMEDOUT, 29
  field :NETWORK_DISCONNECT_DISCONNECTED, 30
  field :NETWORK_DISCONNECT_LEAVINGSPLIT, 31
  field :NETWORK_DISCONNECT_DIFFERENTCLASSTABLES, 32
  field :NETWORK_DISCONNECT_BADRELAYPASSWORD, 33
  field :NETWORK_DISCONNECT_BADSPECTATORPASSWORD, 34
  field :NETWORK_DISCONNECT_HLTVRESTRICTED, 35
  field :NETWORK_DISCONNECT_NOSPECTATORS, 36
  field :NETWORK_DISCONNECT_HLTVUNAVAILABLE, 37
  field :NETWORK_DISCONNECT_HLTVSTOP, 38
  field :NETWORK_DISCONNECT_KICKED, 39
  field :NETWORK_DISCONNECT_BANADDED, 40
  field :NETWORK_DISCONNECT_KICKBANADDED, 41
  field :NETWORK_DISCONNECT_HLTVDIRECT, 42
  field :NETWORK_DISCONNECT_PURESERVER_CLIENTEXTRA, 43
  field :NETWORK_DISCONNECT_PURESERVER_MISMATCH, 44
  field :NETWORK_DISCONNECT_USERCMD, 45
  field :NETWORK_DISCONNECT_REJECTED_BY_GAME, 46
  field :NETWORK_DISCONNECT_MESSAGE_PARSE_ERROR, 47
  field :NETWORK_DISCONNECT_INVALID_MESSAGE_ERROR, 48
  field :NETWORK_DISCONNECT_BAD_SERVER_PASSWORD, 49
  field :NETWORK_DISCONNECT_DIRECT_CONNECT_RESERVATION, 50
  field :NETWORK_DISCONNECT_CONNECTION_FAILURE, 51
  field :NETWORK_DISCONNECT_NO_PEER_GROUP_HANDLERS, 52
  field :NETWORK_DISCONNECT_RECONNECTION, 53
  field :NETWORK_DISCONNECT_LOOPSHUTDOWN, 54
  field :NETWORK_DISCONNECT_LOOPDEACTIVATE, 55
  field :NETWORK_DISCONNECT_HOST_ENDGAME, 56
  field :NETWORK_DISCONNECT_LOOP_LEVELLOAD_ACTIVATE, 57
  field :NETWORK_DISCONNECT_CREATE_SERVER_FAILED, 58
  field :NETWORK_DISCONNECT_EXITING, 59
  field :NETWORK_DISCONNECT_REQUEST_HOSTSTATE_IDLE, 60
  field :NETWORK_DISCONNECT_REQUEST_HOSTSTATE_HLTVRELAY, 61
  field :NETWORK_DISCONNECT_CLIENT_CONSISTENCY_FAIL, 62
  field :NETWORK_DISCONNECT_CLIENT_UNABLE_TO_CRC_MAP, 63
  field :NETWORK_DISCONNECT_CLIENT_NO_MAP, 64
  field :NETWORK_DISCONNECT_CLIENT_DIFFERENT_MAP, 65
  field :NETWORK_DISCONNECT_SERVER_REQUIRES_STEAM, 66
  field :NETWORK_DISCONNECT_STEAM_DENY_MISC, 67
  field :NETWORK_DISCONNECT_STEAM_DENY_BAD_ANTI_CHEAT, 68
  field :NETWORK_DISCONNECT_SERVER_SHUTDOWN, 69
  field :NETWORK_DISCONNECT_REPLAY_INCOMPATIBLE, 71
  field :NETWORK_DISCONNECT_CONNECT_REQUEST_TIMEDOUT, 72
  field :NETWORK_DISCONNECT_SERVER_INCOMPATIBLE, 73
  field :NETWORK_DISCONNECT_LOCALPROBLEM_MANYRELAYS, 74
  field :NETWORK_DISCONNECT_LOCALPROBLEM_HOSTEDSERVERPRIMARYRELAY, 75
  field :NETWORK_DISCONNECT_LOCALPROBLEM_NETWORKCONFIG, 76
  field :NETWORK_DISCONNECT_LOCALPROBLEM_OTHER, 77
  field :NETWORK_DISCONNECT_REMOTE_TIMEOUT, 79
  field :NETWORK_DISCONNECT_REMOTE_TIMEOUT_CONNECTING, 80
  field :NETWORK_DISCONNECT_REMOTE_OTHER, 81
  field :NETWORK_DISCONNECT_REMOTE_BADCRYPT, 82
  field :NETWORK_DISCONNECT_REMOTE_CERTNOTTRUSTED, 83
  field :NETWORK_DISCONNECT_UNUSUAL, 84
  field :NETWORK_DISCONNECT_INTERNAL_ERROR, 85
  field :NETWORK_DISCONNECT_REJECT_BADCHALLENGE, 128
  field :NETWORK_DISCONNECT_REJECT_NOLOBBY, 129
  field :NETWORK_DISCONNECT_REJECT_BACKGROUND_MAP, 130
  field :NETWORK_DISCONNECT_REJECT_SINGLE_PLAYER, 131
  field :NETWORK_DISCONNECT_REJECT_HIDDEN_GAME, 132
  field :NETWORK_DISCONNECT_REJECT_LANRESTRICT, 133
  field :NETWORK_DISCONNECT_REJECT_BADPASSWORD, 134
  field :NETWORK_DISCONNECT_REJECT_SERVERFULL, 135
  field :NETWORK_DISCONNECT_REJECT_INVALIDRESERVATION, 136
  field :NETWORK_DISCONNECT_REJECT_FAILEDCHANNEL, 137
  field :NETWORK_DISCONNECT_REJECT_CONNECT_FROM_LOBBY, 138
  field :NETWORK_DISCONNECT_REJECT_RESERVED_FOR_LOBBY, 139
  field :NETWORK_DISCONNECT_REJECT_INVALIDKEYLENGTH, 140
  field :NETWORK_DISCONNECT_REJECT_OLDPROTOCOL, 141
  field :NETWORK_DISCONNECT_REJECT_NEWPROTOCOL, 142
  field :NETWORK_DISCONNECT_REJECT_INVALIDCONNECTION, 143
  field :NETWORK_DISCONNECT_REJECT_INVALIDCERTLEN, 144
  field :NETWORK_DISCONNECT_REJECT_INVALIDSTEAMCERTLEN, 145
  field :NETWORK_DISCONNECT_REJECT_STEAM, 146
  field :NETWORK_DISCONNECT_REJECT_SERVERAUTHDISABLED, 147
  field :NETWORK_DISCONNECT_REJECT_SERVERCDKEYAUTHINVALID, 148
  field :NETWORK_DISCONNECT_REJECT_BANNED, 149
  field :NETWORK_DISCONNECT_KICKED_TEAMKILLING, 150
  field :NETWORK_DISCONNECT_KICKED_TK_START, 151
  field :NETWORK_DISCONNECT_KICKED_UNTRUSTEDACCOUNT, 152
  field :NETWORK_DISCONNECT_KICKED_CONVICTEDACCOUNT, 153
  field :NETWORK_DISCONNECT_KICKED_COMPETITIVECOOLDOWN, 154
  field :NETWORK_DISCONNECT_KICKED_TEAMHURTING, 155
  field :NETWORK_DISCONNECT_KICKED_HOSTAGEKILLING, 156
  field :NETWORK_DISCONNECT_KICKED_VOTEDOFF, 157
  field :NETWORK_DISCONNECT_KICKED_IDLE, 158
  field :NETWORK_DISCONNECT_KICKED_SUICIDE, 159
  field :NETWORK_DISCONNECT_KICKED_NOSTEAMLOGIN, 160
  field :NETWORK_DISCONNECT_KICKED_NOSTEAMTICKET, 161
end