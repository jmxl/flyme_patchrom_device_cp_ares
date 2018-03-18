.class Lcom/android/server/media/MediaSessionRecord$SessionCb;
.super Ljava/lang/Object;
.source "MediaSessionRecord.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/media/MediaSessionRecord;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "SessionCb"
.end annotation


# instance fields
.field private final mCb:Landroid/media/session/ISessionCallback;

.field final synthetic this$0:Lcom/android/server/media/MediaSessionRecord;


# direct methods
.method static synthetic -get0(Lcom/android/server/media/MediaSessionRecord$SessionCb;)Landroid/media/session/ISessionCallback;
    .locals 1

    iget-object v0, p0, Lcom/android/server/media/MediaSessionRecord$SessionCb;->mCb:Landroid/media/session/ISessionCallback;

    return-object v0
.end method

.method public constructor <init>(Lcom/android/server/media/MediaSessionRecord;Landroid/media/session/ISessionCallback;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/media/MediaSessionRecord;
    .param p2, "cb"    # Landroid/media/session/ISessionCallback;

    .prologue
    .line 988
    iput-object p1, p0, Lcom/android/server/media/MediaSessionRecord$SessionCb;->this$0:Lcom/android/server/media/MediaSessionRecord;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 989
    iput-object p2, p0, Lcom/android/server/media/MediaSessionRecord$SessionCb;->mCb:Landroid/media/session/ISessionCallback;

    .line 988
    return-void
.end method


# virtual methods
.method public adjustVolume(I)V
    .locals 3
    .param p1, "direction"    # I

    .prologue
    .line 1197
    :try_start_0
    iget-object v1, p0, Lcom/android/server/media/MediaSessionRecord$SessionCb;->mCb:Landroid/media/session/ISessionCallback;

    invoke-interface {v1, p1}, Landroid/media/session/ISessionCallback;->onAdjustVolume(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1195
    :goto_0
    return-void

    .line 1198
    :catch_0
    move-exception v0

    .line 1199
    .local v0, "e":Landroid/os/RemoteException;
    const-string/jumbo v1, "MediaSessionRecord"

    const-string/jumbo v2, "Remote failure in adjustVolume."

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public fastForward()V
    .locals 3

    .prologue
    .line 1128
    :try_start_0
    iget-object v1, p0, Lcom/android/server/media/MediaSessionRecord$SessionCb;->mCb:Landroid/media/session/ISessionCallback;

    invoke-interface {v1}, Landroid/media/session/ISessionCallback;->onFastForward()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1126
    :goto_0
    return-void

    .line 1129
    :catch_0
    move-exception v0

    .line 1130
    .local v0, "e":Landroid/os/RemoteException;
    const-string/jumbo v1, "MediaSessionRecord"

    const-string/jumbo v2, "Remote failure in fastForward."

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public getRemoteControlClientNowPlayingEntries()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 1179
    const-string/jumbo v1, "MediaSessionRecord"

    const-string/jumbo v2, "getRemoteControlClientNowPlayingEntries in SessionCb"

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1181
    :try_start_0
    iget-object v1, p0, Lcom/android/server/media/MediaSessionRecord$SessionCb;->mCb:Landroid/media/session/ISessionCallback;

    invoke-interface {v1}, Landroid/media/session/ISessionCallback;->getRemoteControlClientNowPlayingEntries()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1178
    :goto_0
    return-void

    .line 1182
    :catch_0
    move-exception v0

    .line 1183
    .local v0, "e":Landroid/os/RemoteException;
    const-string/jumbo v1, "MediaSessionRecord"

    const-string/jumbo v2, "Remote failure in getRemoteControlClientNowPlayingEntries."

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public next()V
    .locals 3

    .prologue
    .line 1112
    :try_start_0
    iget-object v1, p0, Lcom/android/server/media/MediaSessionRecord$SessionCb;->mCb:Landroid/media/session/ISessionCallback;

    invoke-interface {v1}, Landroid/media/session/ISessionCallback;->onNext()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1110
    :goto_0
    return-void

    .line 1113
    :catch_0
    move-exception v0

    .line 1114
    .local v0, "e":Landroid/os/RemoteException;
    const-string/jumbo v1, "MediaSessionRecord"

    const-string/jumbo v2, "Remote failure in next."

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public pause()V
    .locals 3

    .prologue
    .line 1096
    :try_start_0
    iget-object v1, p0, Lcom/android/server/media/MediaSessionRecord$SessionCb;->mCb:Landroid/media/session/ISessionCallback;

    invoke-interface {v1}, Landroid/media/session/ISessionCallback;->onPause()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1094
    :goto_0
    return-void

    .line 1097
    :catch_0
    move-exception v0

    .line 1098
    .local v0, "e":Landroid/os/RemoteException;
    const-string/jumbo v1, "MediaSessionRecord"

    const-string/jumbo v2, "Remote failure in pause."

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public play()V
    .locals 3

    .prologue
    .line 1056
    :try_start_0
    iget-object v1, p0, Lcom/android/server/media/MediaSessionRecord$SessionCb;->mCb:Landroid/media/session/ISessionCallback;

    invoke-interface {v1}, Landroid/media/session/ISessionCallback;->onPlay()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1054
    :goto_0
    return-void

    .line 1057
    :catch_0
    move-exception v0

    .line 1058
    .local v0, "e":Landroid/os/RemoteException;
    const-string/jumbo v1, "MediaSessionRecord"

    const-string/jumbo v2, "Remote failure in play."

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public playFromMediaId(Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 3
    .param p1, "mediaId"    # Ljava/lang/String;
    .param p2, "extras"    # Landroid/os/Bundle;

    .prologue
    .line 1064
    :try_start_0
    iget-object v1, p0, Lcom/android/server/media/MediaSessionRecord$SessionCb;->mCb:Landroid/media/session/ISessionCallback;

    invoke-interface {v1, p1, p2}, Landroid/media/session/ISessionCallback;->onPlayFromMediaId(Ljava/lang/String;Landroid/os/Bundle;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1062
    :goto_0
    return-void

    .line 1065
    :catch_0
    move-exception v0

    .line 1066
    .local v0, "e":Landroid/os/RemoteException;
    const-string/jumbo v1, "MediaSessionRecord"

    const-string/jumbo v2, "Remote failure in playFromMediaId."

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public playFromSearch(Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 3
    .param p1, "query"    # Ljava/lang/String;
    .param p2, "extras"    # Landroid/os/Bundle;

    .prologue
    .line 1072
    :try_start_0
    iget-object v1, p0, Lcom/android/server/media/MediaSessionRecord$SessionCb;->mCb:Landroid/media/session/ISessionCallback;

    invoke-interface {v1, p1, p2}, Landroid/media/session/ISessionCallback;->onPlayFromSearch(Ljava/lang/String;Landroid/os/Bundle;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1070
    :goto_0
    return-void

    .line 1073
    :catch_0
    move-exception v0

    .line 1074
    .local v0, "e":Landroid/os/RemoteException;
    const-string/jumbo v1, "MediaSessionRecord"

    const-string/jumbo v2, "Remote failure in playFromSearch."

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public playFromUri(Landroid/net/Uri;Landroid/os/Bundle;)V
    .locals 3
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "extras"    # Landroid/os/Bundle;

    .prologue
    .line 1080
    :try_start_0
    iget-object v1, p0, Lcom/android/server/media/MediaSessionRecord$SessionCb;->mCb:Landroid/media/session/ISessionCallback;

    invoke-interface {v1, p1, p2}, Landroid/media/session/ISessionCallback;->onPlayFromUri(Landroid/net/Uri;Landroid/os/Bundle;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1078
    :goto_0
    return-void

    .line 1081
    :catch_0
    move-exception v0

    .line 1082
    .local v0, "e":Landroid/os/RemoteException;
    const-string/jumbo v1, "MediaSessionRecord"

    const-string/jumbo v2, "Remote failure in playFromUri."

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public prepare()V
    .locals 3

    .prologue
    .line 1024
    :try_start_0
    iget-object v1, p0, Lcom/android/server/media/MediaSessionRecord$SessionCb;->mCb:Landroid/media/session/ISessionCallback;

    invoke-interface {v1}, Landroid/media/session/ISessionCallback;->onPrepare()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1022
    :goto_0
    return-void

    .line 1025
    :catch_0
    move-exception v0

    .line 1026
    .local v0, "e":Landroid/os/RemoteException;
    const-string/jumbo v1, "MediaSessionRecord"

    const-string/jumbo v2, "Remote failure in prepare."

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public prepareFromMediaId(Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 3
    .param p1, "mediaId"    # Ljava/lang/String;
    .param p2, "extras"    # Landroid/os/Bundle;

    .prologue
    .line 1032
    :try_start_0
    iget-object v1, p0, Lcom/android/server/media/MediaSessionRecord$SessionCb;->mCb:Landroid/media/session/ISessionCallback;

    invoke-interface {v1, p1, p2}, Landroid/media/session/ISessionCallback;->onPrepareFromMediaId(Ljava/lang/String;Landroid/os/Bundle;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1030
    :goto_0
    return-void

    .line 1033
    :catch_0
    move-exception v0

    .line 1034
    .local v0, "e":Landroid/os/RemoteException;
    const-string/jumbo v1, "MediaSessionRecord"

    const-string/jumbo v2, "Remote failure in prepareFromMediaId."

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public prepareFromSearch(Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 3
    .param p1, "query"    # Ljava/lang/String;
    .param p2, "extras"    # Landroid/os/Bundle;

    .prologue
    .line 1040
    :try_start_0
    iget-object v1, p0, Lcom/android/server/media/MediaSessionRecord$SessionCb;->mCb:Landroid/media/session/ISessionCallback;

    invoke-interface {v1, p1, p2}, Landroid/media/session/ISessionCallback;->onPrepareFromSearch(Ljava/lang/String;Landroid/os/Bundle;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1038
    :goto_0
    return-void

    .line 1041
    :catch_0
    move-exception v0

    .line 1042
    .local v0, "e":Landroid/os/RemoteException;
    const-string/jumbo v1, "MediaSessionRecord"

    const-string/jumbo v2, "Remote failure in prepareFromSearch."

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public prepareFromUri(Landroid/net/Uri;Landroid/os/Bundle;)V
    .locals 3
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "extras"    # Landroid/os/Bundle;

    .prologue
    .line 1048
    :try_start_0
    iget-object v1, p0, Lcom/android/server/media/MediaSessionRecord$SessionCb;->mCb:Landroid/media/session/ISessionCallback;

    invoke-interface {v1, p1, p2}, Landroid/media/session/ISessionCallback;->onPrepareFromUri(Landroid/net/Uri;Landroid/os/Bundle;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1046
    :goto_0
    return-void

    .line 1049
    :catch_0
    move-exception v0

    .line 1050
    .local v0, "e":Landroid/os/RemoteException;
    const-string/jumbo v1, "MediaSessionRecord"

    const-string/jumbo v2, "Remote failure in prepareFromUri."

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public previous()V
    .locals 3

    .prologue
    .line 1120
    :try_start_0
    iget-object v1, p0, Lcom/android/server/media/MediaSessionRecord$SessionCb;->mCb:Landroid/media/session/ISessionCallback;

    invoke-interface {v1}, Landroid/media/session/ISessionCallback;->onPrevious()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1118
    :goto_0
    return-void

    .line 1121
    :catch_0
    move-exception v0

    .line 1122
    .local v0, "e":Landroid/os/RemoteException;
    const-string/jumbo v1, "MediaSessionRecord"

    const-string/jumbo v2, "Remote failure in previous."

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public rate(Landroid/media/Rating;)V
    .locals 3
    .param p1, "rating"    # Landroid/media/Rating;

    .prologue
    .line 1189
    :try_start_0
    iget-object v1, p0, Lcom/android/server/media/MediaSessionRecord$SessionCb;->mCb:Landroid/media/session/ISessionCallback;

    invoke-interface {v1, p1}, Landroid/media/session/ISessionCallback;->onRate(Landroid/media/Rating;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1187
    :goto_0
    return-void

    .line 1190
    :catch_0
    move-exception v0

    .line 1191
    .local v0, "e":Landroid/os/RemoteException;
    const-string/jumbo v1, "MediaSessionRecord"

    const-string/jumbo v2, "Remote failure in rate."

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public rewind()V
    .locals 3

    .prologue
    .line 1136
    :try_start_0
    iget-object v1, p0, Lcom/android/server/media/MediaSessionRecord$SessionCb;->mCb:Landroid/media/session/ISessionCallback;

    invoke-interface {v1}, Landroid/media/session/ISessionCallback;->onRewind()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1134
    :goto_0
    return-void

    .line 1137
    :catch_0
    move-exception v0

    .line 1138
    .local v0, "e":Landroid/os/RemoteException;
    const-string/jumbo v1, "MediaSessionRecord"

    const-string/jumbo v2, "Remote failure in rewind."

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public seekTo(J)V
    .locals 3
    .param p1, "pos"    # J

    .prologue
    .line 1143
    const-string/jumbo v1, "MediaSessionRecord"

    const-string/jumbo v2, "seekTo in SessionCb"

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1145
    :try_start_0
    iget-object v1, p0, Lcom/android/server/media/MediaSessionRecord$SessionCb;->mCb:Landroid/media/session/ISessionCallback;

    invoke-interface {v1, p1, p2}, Landroid/media/session/ISessionCallback;->onSeekTo(J)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1142
    :goto_0
    return-void

    .line 1146
    :catch_0
    move-exception v0

    .line 1147
    .local v0, "e":Landroid/os/RemoteException;
    const-string/jumbo v1, "MediaSessionRecord"

    const-string/jumbo v2, "Remote failure in seekTo."

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public sendCommand(Ljava/lang/String;Landroid/os/Bundle;Landroid/os/ResultReceiver;)V
    .locals 3
    .param p1, "command"    # Ljava/lang/String;
    .param p2, "args"    # Landroid/os/Bundle;
    .param p3, "cb"    # Landroid/os/ResultReceiver;

    .prologue
    .line 1008
    :try_start_0
    iget-object v1, p0, Lcom/android/server/media/MediaSessionRecord$SessionCb;->mCb:Landroid/media/session/ISessionCallback;

    invoke-interface {v1, p1, p2, p3}, Landroid/media/session/ISessionCallback;->onCommand(Ljava/lang/String;Landroid/os/Bundle;Landroid/os/ResultReceiver;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1006
    :goto_0
    return-void

    .line 1009
    :catch_0
    move-exception v0

    .line 1010
    .local v0, "e":Landroid/os/RemoteException;
    const-string/jumbo v1, "MediaSessionRecord"

    const-string/jumbo v2, "Remote failure in sendCommand."

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public sendCustomAction(Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 3
    .param p1, "action"    # Ljava/lang/String;
    .param p2, "args"    # Landroid/os/Bundle;

    .prologue
    .line 1016
    :try_start_0
    iget-object v1, p0, Lcom/android/server/media/MediaSessionRecord$SessionCb;->mCb:Landroid/media/session/ISessionCallback;

    invoke-interface {v1, p1, p2}, Landroid/media/session/ISessionCallback;->onCustomAction(Ljava/lang/String;Landroid/os/Bundle;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1014
    :goto_0
    return-void

    .line 1017
    :catch_0
    move-exception v0

    .line 1018
    .local v0, "e":Landroid/os/RemoteException;
    const-string/jumbo v1, "MediaSessionRecord"

    const-string/jumbo v2, "Remote failure in sendCustomAction."

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public sendMediaButton(Landroid/view/KeyEvent;ILandroid/os/ResultReceiver;)Z
    .locals 4
    .param p1, "keyEvent"    # Landroid/view/KeyEvent;
    .param p2, "sequenceId"    # I
    .param p3, "cb"    # Landroid/os/ResultReceiver;

    .prologue
    .line 993
    new-instance v1, Landroid/content/Intent;

    const-string/jumbo v2, "android.intent.action.MEDIA_BUTTON"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 994
    .local v1, "mediaButtonIntent":Landroid/content/Intent;
    const-string/jumbo v2, "MediaSessionRecord"

    const-string/jumbo v3, "Increase MEDIA_BUTTON queuing priority "

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 995
    const/high16 v2, 0x10000000

    invoke-virtual {v1, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 996
    const-string/jumbo v2, "android.intent.extra.KEY_EVENT"

    invoke-virtual {v1, v2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 998
    :try_start_0
    iget-object v2, p0, Lcom/android/server/media/MediaSessionRecord$SessionCb;->mCb:Landroid/media/session/ISessionCallback;

    invoke-interface {v2, v1, p2, p3}, Landroid/media/session/ISessionCallback;->onMediaButton(Landroid/content/Intent;ILandroid/os/ResultReceiver;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 999
    const/4 v2, 0x1

    return v2

    .line 1000
    :catch_0
    move-exception v0

    .line 1001
    .local v0, "e":Landroid/os/RemoteException;
    const-string/jumbo v2, "MediaSessionRecord"

    const-string/jumbo v3, "Remote failure in sendMediaRequest."

    invoke-static {v2, v3, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1003
    const/4 v2, 0x0

    return v2
.end method

.method public setRemoteControlClientBrowsedPlayer()V
    .locals 3

    .prologue
    .line 1155
    const-string/jumbo v1, "MediaSessionRecord"

    const-string/jumbo v2, "setRemoteControlClientBrowsedPlayer in SessionCb"

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1157
    :try_start_0
    iget-object v1, p0, Lcom/android/server/media/MediaSessionRecord$SessionCb;->mCb:Landroid/media/session/ISessionCallback;

    invoke-interface {v1}, Landroid/media/session/ISessionCallback;->setRemoteControlClientBrowsedPlayer()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1154
    :goto_0
    return-void

    .line 1158
    :catch_0
    move-exception v0

    .line 1159
    .local v0, "e":Landroid/os/RemoteException;
    const-string/jumbo v1, "MediaSessionRecord"

    const-string/jumbo v2, "Remote failure in setRemoteControlClientBrowsedPlayer."

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public setRemoteControlClientPlayItem(JI)V
    .locals 3
    .param p1, "uid"    # J
    .param p3, "scope"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 1167
    const-string/jumbo v1, "MediaSessionRecord"

    const-string/jumbo v2, "setRemoteControlClientPlayItem in SessionCb"

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1169
    :try_start_0
    iget-object v1, p0, Lcom/android/server/media/MediaSessionRecord$SessionCb;->mCb:Landroid/media/session/ISessionCallback;

    invoke-interface {v1, p1, p2, p3}, Landroid/media/session/ISessionCallback;->setRemoteControlClientPlayItem(JI)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1166
    :goto_0
    return-void

    .line 1170
    :catch_0
    move-exception v0

    .line 1171
    .local v0, "e":Landroid/os/RemoteException;
    const-string/jumbo v1, "MediaSessionRecord"

    const-string/jumbo v2, "Remote failure in setRemoteControlClientPlayItem."

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public setVolumeTo(I)V
    .locals 3
    .param p1, "value"    # I

    .prologue
    .line 1205
    :try_start_0
    iget-object v1, p0, Lcom/android/server/media/MediaSessionRecord$SessionCb;->mCb:Landroid/media/session/ISessionCallback;

    invoke-interface {v1, p1}, Landroid/media/session/ISessionCallback;->onSetVolumeTo(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1203
    :goto_0
    return-void

    .line 1206
    :catch_0
    move-exception v0

    .line 1207
    .local v0, "e":Landroid/os/RemoteException;
    const-string/jumbo v1, "MediaSessionRecord"

    const-string/jumbo v2, "Remote failure in setVolumeTo."

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public skipToTrack(J)V
    .locals 3
    .param p1, "id"    # J

    .prologue
    .line 1088
    :try_start_0
    iget-object v1, p0, Lcom/android/server/media/MediaSessionRecord$SessionCb;->mCb:Landroid/media/session/ISessionCallback;

    invoke-interface {v1, p1, p2}, Landroid/media/session/ISessionCallback;->onSkipToTrack(J)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1086
    :goto_0
    return-void

    .line 1089
    :catch_0
    move-exception v0

    .line 1090
    .local v0, "e":Landroid/os/RemoteException;
    const-string/jumbo v1, "MediaSessionRecord"

    const-string/jumbo v2, "Remote failure in skipToTrack"

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public stop()V
    .locals 3

    .prologue
    .line 1104
    :try_start_0
    iget-object v1, p0, Lcom/android/server/media/MediaSessionRecord$SessionCb;->mCb:Landroid/media/session/ISessionCallback;

    invoke-interface {v1}, Landroid/media/session/ISessionCallback;->onStop()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1102
    :goto_0
    return-void

    .line 1105
    :catch_0
    move-exception v0

    .line 1106
    .local v0, "e":Landroid/os/RemoteException;
    const-string/jumbo v1, "MediaSessionRecord"

    const-string/jumbo v2, "Remote failure in stop."

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method
