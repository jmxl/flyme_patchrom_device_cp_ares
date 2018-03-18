.class public abstract Lcom/android/server/fingerprint/ClientMonitor;
.super Ljava/lang/Object;
.source "ClientMonitor.java"

# interfaces
.implements Landroid/os/IBinder$DeathRecipient;


# static fields
.field protected static final ALIPAY_PACKAGE_NAME:Ljava/lang/String; = "com.eg.android.AlipayGphone"

.field protected static final DEBUG:Z = true

.field protected static final ERROR_ESRCH:I = 0x3

.field protected static final TAG:Ljava/lang/String; = "FingerprintService"

.field protected static final WECHAT_PACKAGE_NAME:Ljava/lang/String; = "com.tencent.mm"


# instance fields
.field private mContext:Landroid/content/Context;

.field private mGroupId:I

.field private mHalDeviceId:J

.field private mIsRestricted:Z

.field private mOwner:Ljava/lang/String;

.field private mReceiver:Landroid/hardware/fingerprint/IFingerprintServiceReceiver;

.field private mTargetUserId:I

.field private mToken:Landroid/os/IBinder;


# direct methods
.method public constructor <init>(Landroid/content/Context;JLandroid/os/IBinder;Landroid/hardware/fingerprint/IFingerprintServiceReceiver;IIZLjava/lang/String;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "halDeviceId"    # J
    .param p4, "token"    # Landroid/os/IBinder;
    .param p5, "receiver"    # Landroid/hardware/fingerprint/IFingerprintServiceReceiver;
    .param p6, "userId"    # I
    .param p7, "groupId"    # I
    .param p8, "restricted"    # Z
    .param p9, "owner"    # Ljava/lang/String;

    .prologue
    .line 61
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 64
    iput-object p1, p0, Lcom/android/server/fingerprint/ClientMonitor;->mContext:Landroid/content/Context;

    .line 65
    iput-wide p2, p0, Lcom/android/server/fingerprint/ClientMonitor;->mHalDeviceId:J

    .line 66
    iput-object p4, p0, Lcom/android/server/fingerprint/ClientMonitor;->mToken:Landroid/os/IBinder;

    .line 67
    iput-object p5, p0, Lcom/android/server/fingerprint/ClientMonitor;->mReceiver:Landroid/hardware/fingerprint/IFingerprintServiceReceiver;

    .line 68
    iput p6, p0, Lcom/android/server/fingerprint/ClientMonitor;->mTargetUserId:I

    .line 69
    iput p7, p0, Lcom/android/server/fingerprint/ClientMonitor;->mGroupId:I

    .line 70
    iput-boolean p8, p0, Lcom/android/server/fingerprint/ClientMonitor;->mIsRestricted:Z

    .line 71
    iput-object p9, p0, Lcom/android/server/fingerprint/ClientMonitor;->mOwner:Ljava/lang/String;

    .line 73
    const/4 v1, 0x0

    :try_start_0
    invoke-interface {p4, p0, v1}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 63
    :goto_0
    return-void

    .line 74
    :catch_0
    move-exception v0

    .line 75
    .local v0, "e":Landroid/os/RemoteException;
    const-string/jumbo v1, "FingerprintService"

    const-string/jumbo v2, "caught remote exception in linkToDeath: "

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method


# virtual methods
.method public binderDied()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 165
    iput-object v0, p0, Lcom/android/server/fingerprint/ClientMonitor;->mToken:Landroid/os/IBinder;

    .line 166
    iput-object v0, p0, Lcom/android/server/fingerprint/ClientMonitor;->mReceiver:Landroid/hardware/fingerprint/IFingerprintServiceReceiver;

    .line 167
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/server/fingerprint/ClientMonitor;->onError(I)Z

    .line 164
    return-void
.end method

.method public destroy()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 151
    iget-object v1, p0, Lcom/android/server/fingerprint/ClientMonitor;->mToken:Landroid/os/IBinder;

    if-eqz v1, :cond_0

    .line 153
    :try_start_0
    iget-object v1, p0, Lcom/android/server/fingerprint/ClientMonitor;->mToken:Landroid/os/IBinder;

    const/4 v2, 0x0

    invoke-interface {v1, p0, v2}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z
    :try_end_0
    .catch Ljava/util/NoSuchElementException; {:try_start_0 .. :try_end_0} :catch_0

    .line 158
    :goto_0
    iput-object v5, p0, Lcom/android/server/fingerprint/ClientMonitor;->mToken:Landroid/os/IBinder;

    .line 160
    :cond_0
    iput-object v5, p0, Lcom/android/server/fingerprint/ClientMonitor;->mReceiver:Landroid/hardware/fingerprint/IFingerprintServiceReceiver;

    .line 150
    return-void

    .line 154
    :catch_0
    move-exception v0

    .line 156
    .local v0, "e":Ljava/util/NoSuchElementException;
    const-string/jumbo v1, "FingerprintService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "destroy(): "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ":"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/Exception;

    const-string/jumbo v4, "here"

    invoke-direct {v3, v4}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    invoke-static {v1, v2, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method protected finalize()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 173
    :try_start_0
    iget-object v0, p0, Lcom/android/server/fingerprint/ClientMonitor;->mToken:Landroid/os/IBinder;

    if-eqz v0, :cond_0

    .line 174
    const-string/jumbo v0, "FingerprintService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "removing leaked reference: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/fingerprint/ClientMonitor;->mToken:Landroid/os/IBinder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 175
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/server/fingerprint/ClientMonitor;->onError(I)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 178
    :cond_0
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    .line 171
    return-void

    .line 177
    :catchall_0
    move-exception v0

    .line 178
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    .line 177
    throw v0
.end method

.method public final getContext()Landroid/content/Context;
    .locals 1

    .prologue
    .line 183
    iget-object v0, p0, Lcom/android/server/fingerprint/ClientMonitor;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method public abstract getFingerprintDaemon()Landroid/hardware/fingerprint/IFingerprintDaemon;
.end method

.method public final getGroupId()I
    .locals 1

    .prologue
    .line 207
    iget v0, p0, Lcom/android/server/fingerprint/ClientMonitor;->mGroupId:I

    return v0
.end method

.method public final getHalDeviceId()J
    .locals 2

    .prologue
    .line 187
    iget-wide v0, p0, Lcom/android/server/fingerprint/ClientMonitor;->mHalDeviceId:J

    return-wide v0
.end method

.method public final getIsRestricted()Z
    .locals 1

    .prologue
    .line 199
    iget-boolean v0, p0, Lcom/android/server/fingerprint/ClientMonitor;->mIsRestricted:Z

    return v0
.end method

.method public final getOwnerString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 191
    iget-object v0, p0, Lcom/android/server/fingerprint/ClientMonitor;->mOwner:Ljava/lang/String;

    return-object v0
.end method

.method public final getReceiver()Landroid/hardware/fingerprint/IFingerprintServiceReceiver;
    .locals 1

    .prologue
    .line 195
    iget-object v0, p0, Lcom/android/server/fingerprint/ClientMonitor;->mReceiver:Landroid/hardware/fingerprint/IFingerprintServiceReceiver;

    return-object v0
.end method

.method public final getTargetUserId()I
    .locals 1

    .prologue
    .line 203
    iget v0, p0, Lcom/android/server/fingerprint/ClientMonitor;->mTargetUserId:I

    return v0
.end method

.method public final getToken()Landroid/os/IBinder;
    .locals 1

    .prologue
    .line 211
    iget-object v0, p0, Lcom/android/server/fingerprint/ClientMonitor;->mToken:Landroid/os/IBinder;

    return-object v0
.end method

.method public abstract notifyUserActivity()V
.end method

.method public onAcquired(I)Z
    .locals 6
    .param p1, "acquiredInfo"    # I

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 117
    iget-object v1, p0, Lcom/android/server/fingerprint/ClientMonitor;->mReceiver:Landroid/hardware/fingerprint/IFingerprintServiceReceiver;

    if-nez v1, :cond_0

    .line 118
    return v5

    .line 120
    :cond_0
    :try_start_0
    iget-object v1, p0, Lcom/android/server/fingerprint/ClientMonitor;->mReceiver:Landroid/hardware/fingerprint/IFingerprintServiceReceiver;

    invoke-virtual {p0}, Lcom/android/server/fingerprint/ClientMonitor;->getHalDeviceId()J

    move-result-wide v2

    invoke-interface {v1, v2, v3, p1}, Landroid/hardware/fingerprint/IFingerprintServiceReceiver;->onAcquired(JI)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 127
    if-nez p1, :cond_1

    .line 128
    invoke-virtual {p0}, Lcom/android/server/fingerprint/ClientMonitor;->notifyUserActivity()V

    .line 121
    :cond_1
    return v4

    .line 122
    :catch_0
    move-exception v0

    .line 123
    .local v0, "e":Landroid/os/RemoteException;
    :try_start_1
    const-string/jumbo v1, "FingerprintService"

    const-string/jumbo v2, "Failed to invoke sendAcquired:"

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 127
    if-nez p1, :cond_2

    .line 128
    invoke-virtual {p0}, Lcom/android/server/fingerprint/ClientMonitor;->notifyUserActivity()V

    .line 124
    :cond_2
    return v5

    .line 125
    .end local v0    # "e":Landroid/os/RemoteException;
    :catchall_0
    move-exception v1

    .line 127
    if-nez p1, :cond_3

    .line 128
    invoke-virtual {p0}, Lcom/android/server/fingerprint/ClientMonitor;->notifyUserActivity()V

    .line 125
    :cond_3
    throw v1
.end method

.method public abstract onAuthenticated(II)Z
.end method

.method public abstract onEnrollResult(III)Z
.end method

.method public abstract onEnumerationResult(II)Z
.end method

.method public onError(I)Z
    .locals 4
    .param p1, "error"    # I

    .prologue
    .line 140
    iget-object v1, p0, Lcom/android/server/fingerprint/ClientMonitor;->mReceiver:Landroid/hardware/fingerprint/IFingerprintServiceReceiver;

    if-eqz v1, :cond_0

    .line 142
    :try_start_0
    iget-object v1, p0, Lcom/android/server/fingerprint/ClientMonitor;->mReceiver:Landroid/hardware/fingerprint/IFingerprintServiceReceiver;

    invoke-virtual {p0}, Lcom/android/server/fingerprint/ClientMonitor;->getHalDeviceId()J

    move-result-wide v2

    invoke-interface {v1, v2, v3, p1}, Landroid/hardware/fingerprint/IFingerprintServiceReceiver;->onError(JI)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 147
    :cond_0
    :goto_0
    const/4 v1, 0x1

    return v1

    .line 143
    :catch_0
    move-exception v0

    .line 144
    .local v0, "e":Landroid/os/RemoteException;
    const-string/jumbo v1, "FingerprintService"

    const-string/jumbo v2, "Failed to invoke sendError:"

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public abstract onRemoved(II)Z
.end method

.method public abstract start()I
.end method

.method public abstract stop(Z)I
.end method
