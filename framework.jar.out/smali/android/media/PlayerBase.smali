.class public abstract Landroid/media/PlayerBase;
.super Ljava/lang/Object;
.source "PlayerBase.java"


# instance fields
.field private final mAppOps:Lcom/android/internal/app/IAppOpsService;

.field private final mAppOpsCallback:Lcom/android/internal/app/IAppOpsCallback;

.field private final mAppOpsLock:Ljava/lang/Object;

.field protected mAttributes:Landroid/media/AudioAttributes;

.field protected mAuxEffectSendLevel:F

.field private mHasAppOpsPlayAudio:Z

.field protected mLeftVolume:F

.field protected mRightVolume:F


# direct methods
.method static synthetic -get0(Landroid/media/PlayerBase;)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Landroid/media/PlayerBase;->mAppOpsLock:Ljava/lang/Object;

    return-object v0
.end method

.method constructor <init>(Landroid/media/AudioAttributes;)V
    .locals 6
    .param p1, "attr"    # Landroid/media/AudioAttributes;

    .prologue
    const/high16 v2, 0x3f800000    # 1.0f

    .line 60
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 45
    iput v2, p0, Landroid/media/PlayerBase;->mLeftVolume:F

    .line 46
    iput v2, p0, Landroid/media/PlayerBase;->mRightVolume:F

    .line 47
    const/4 v2, 0x0

    iput v2, p0, Landroid/media/PlayerBase;->mAuxEffectSendLevel:F

    .line 52
    const/4 v2, 0x1

    iput-boolean v2, p0, Landroid/media/PlayerBase;->mHasAppOpsPlayAudio:Z

    .line 53
    new-instance v2, Ljava/lang/Object;

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    iput-object v2, p0, Landroid/media/PlayerBase;->mAppOpsLock:Ljava/lang/Object;

    .line 61
    if-nez p1, :cond_0

    .line 62
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v3, "Illegal null AudioAttributes"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 64
    :cond_0
    iput-object p1, p0, Landroid/media/PlayerBase;->mAttributes:Landroid/media/AudioAttributes;

    .line 65
    const-string/jumbo v2, "appops"

    invoke-static {v2}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 66
    .local v0, "b":Landroid/os/IBinder;
    invoke-static {v0}, Lcom/android/internal/app/IAppOpsService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/app/IAppOpsService;

    move-result-object v2

    iput-object v2, p0, Landroid/media/PlayerBase;->mAppOps:Lcom/android/internal/app/IAppOpsService;

    .line 68
    invoke-virtual {p0}, Landroid/media/PlayerBase;->updateAppOpsPlayAudio_sync()V

    .line 70
    new-instance v2, Landroid/media/PlayerBase$1;

    invoke-direct {v2, p0}, Landroid/media/PlayerBase$1;-><init>(Landroid/media/PlayerBase;)V

    iput-object v2, p0, Landroid/media/PlayerBase;->mAppOpsCallback:Lcom/android/internal/app/IAppOpsCallback;

    .line 80
    :try_start_0
    iget-object v2, p0, Landroid/media/PlayerBase;->mAppOps:Lcom/android/internal/app/IAppOpsService;

    .line 81
    invoke-static {}, Landroid/app/ActivityThread;->currentPackageName()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Landroid/media/PlayerBase;->mAppOpsCallback:Lcom/android/internal/app/IAppOpsCallback;

    .line 80
    const/16 v5, 0x1c

    invoke-interface {v2, v5, v3, v4}, Lcom/android/internal/app/IAppOpsService;->startWatchingMode(ILjava/lang/String;Lcom/android/internal/app/IAppOpsCallback;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 60
    :goto_0
    return-void

    .line 82
    :catch_0
    move-exception v1

    .line 83
    .local v1, "e":Landroid/os/RemoteException;
    const/4 v2, 0x0

    iput-boolean v2, p0, Landroid/media/PlayerBase;->mHasAppOpsPlayAudio:Z

    goto :goto_0
.end method


# virtual methods
.method baseRelease()V
    .locals 4

    .prologue
    .line 137
    :try_start_0
    iget-object v2, p0, Landroid/media/PlayerBase;->mAppOps:Lcom/android/internal/app/IAppOpsService;

    iget-object v3, p0, Landroid/media/PlayerBase;->mAppOpsCallback:Lcom/android/internal/app/IAppOpsCallback;

    invoke-interface {v2, v3}, Lcom/android/internal/app/IAppOpsService;->stopWatchingMode(Lcom/android/internal/app/IAppOpsCallback;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    .line 135
    :goto_0
    return-void

    .line 140
    :catch_0
    move-exception v1

    .line 142
    .local v1, "e":Ljava/lang/IllegalStateException;
    const-string/jumbo v2, "PlayerBase"

    invoke-virtual {v1}, Ljava/lang/IllegalStateException;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 138
    .end local v1    # "e":Ljava/lang/IllegalStateException;
    :catch_1
    move-exception v0

    .local v0, "e":Landroid/os/RemoteException;
    goto :goto_0
.end method

.method baseSetAuxEffectSendLevel(F)I
    .locals 2
    .param p1, "level"    # F

    .prologue
    .line 122
    iget-object v1, p0, Landroid/media/PlayerBase;->mAppOpsLock:Ljava/lang/Object;

    monitor-enter v1

    .line 123
    :try_start_0
    iput p1, p0, Landroid/media/PlayerBase;->mAuxEffectSendLevel:F

    .line 124
    invoke-virtual {p0}, Landroid/media/PlayerBase;->isRestricted_sync()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-eqz v0, :cond_0

    .line 125
    const/4 v0, 0x0

    monitor-exit v1

    return v0

    :cond_0
    monitor-exit v1

    .line 128
    invoke-virtual {p0, p1}, Landroid/media/PlayerBase;->playerSetAuxEffectSendLevel(F)I

    move-result v0

    return v0

    .line 122
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method baseSetVolume(FF)V
    .locals 2
    .param p1, "leftVolume"    # F
    .param p2, "rightVolume"    # F

    .prologue
    .line 111
    iget-object v1, p0, Landroid/media/PlayerBase;->mAppOpsLock:Ljava/lang/Object;

    monitor-enter v1

    .line 112
    :try_start_0
    iput p1, p0, Landroid/media/PlayerBase;->mLeftVolume:F

    .line 113
    iput p2, p0, Landroid/media/PlayerBase;->mRightVolume:F

    .line 114
    invoke-virtual {p0}, Landroid/media/PlayerBase;->isRestricted_sync()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-eqz v0, :cond_0

    monitor-exit v1

    .line 115
    return-void

    :cond_0
    monitor-exit v1

    .line 118
    invoke-virtual {p0, p1, p2}, Landroid/media/PlayerBase;->playerSetVolume(FF)V

    .line 110
    return-void

    .line 111
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method baseStart()V
    .locals 3

    .prologue
    .line 103
    iget-object v1, p0, Landroid/media/PlayerBase;->mAppOpsLock:Ljava/lang/Object;

    monitor-enter v1

    .line 104
    :try_start_0
    invoke-virtual {p0}, Landroid/media/PlayerBase;->isRestricted_sync()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 105
    const/4 v0, 0x0

    const/4 v2, 0x0

    invoke-virtual {p0, v0, v2}, Landroid/media/PlayerBase;->playerSetVolume(FF)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    monitor-exit v1

    .line 102
    return-void

    .line 103
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method baseUpdateAudioAttributes(Landroid/media/AudioAttributes;)V
    .locals 2
    .param p1, "attr"    # Landroid/media/AudioAttributes;

    .prologue
    .line 93
    if-nez p1, :cond_0

    .line 94
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "Illegal null AudioAttributes"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 96
    :cond_0
    iget-object v1, p0, Landroid/media/PlayerBase;->mAppOpsLock:Ljava/lang/Object;

    monitor-enter v1

    .line 97
    :try_start_0
    iput-object p1, p0, Landroid/media/PlayerBase;->mAttributes:Landroid/media/AudioAttributes;

    .line 98
    invoke-virtual {p0}, Landroid/media/PlayerBase;->updateAppOpsPlayAudio_sync()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    .line 92
    return-void

    .line 96
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method isRestricted_sync()Z
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 189
    iget-boolean v0, p0, Landroid/media/PlayerBase;->mHasAppOpsPlayAudio:Z

    if-eqz v0, :cond_0

    .line 190
    return v1

    .line 193
    :cond_0
    iget-object v0, p0, Landroid/media/PlayerBase;->mAttributes:Landroid/media/AudioAttributes;

    invoke-virtual {v0}, Landroid/media/AudioAttributes;->getAllFlags()I

    move-result v0

    and-int/lit8 v0, v0, 0x40

    if-eqz v0, :cond_1

    .line 194
    return v1

    .line 196
    :cond_1
    const/4 v0, 0x1

    return v0
.end method

.method abstract playerSetAuxEffectSendLevel(F)I
.end method

.method abstract playerSetVolume(FF)V
.end method

.method updateAppOpsPlayAudio_sync()V
    .locals 10

    .prologue
    const/4 v5, 0x0

    .line 151
    iget-boolean v3, p0, Landroid/media/PlayerBase;->mHasAppOpsPlayAudio:Z

    .line 153
    .local v3, "oldHasAppOpsPlayAudio":Z
    :try_start_0
    iget-object v4, p0, Landroid/media/PlayerBase;->mAppOps:Lcom/android/internal/app/IAppOpsService;

    .line 154
    iget-object v6, p0, Landroid/media/PlayerBase;->mAttributes:Landroid/media/AudioAttributes;

    invoke-virtual {v6}, Landroid/media/AudioAttributes;->getUsage()I

    move-result v6

    .line 155
    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v7

    invoke-static {}, Landroid/app/ActivityThread;->currentPackageName()Ljava/lang/String;

    move-result-object v8

    .line 153
    const/16 v9, 0x1c

    invoke-interface {v4, v9, v6, v7, v8}, Lcom/android/internal/app/IAppOpsService;->checkAudioOperation(IIILjava/lang/String;)I

    move-result v2

    .line 156
    .local v2, "mode":I
    if-nez v2, :cond_1

    const/4 v4, 0x1

    :goto_0
    iput-boolean v4, p0, Landroid/media/PlayerBase;->mHasAppOpsPlayAudio:Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 164
    .end local v2    # "mode":I
    :goto_1
    :try_start_1
    iget-boolean v4, p0, Landroid/media/PlayerBase;->mHasAppOpsPlayAudio:Z

    if-eq v3, v4, :cond_0

    .line 165
    iget-boolean v4, p0, Landroid/media/PlayerBase;->mHasAppOpsPlayAudio:Z

    if-eqz v4, :cond_2

    .line 166
    iget v4, p0, Landroid/media/PlayerBase;->mLeftVolume:F

    iget v5, p0, Landroid/media/PlayerBase;->mRightVolume:F

    invoke-virtual {p0, v4, v5}, Landroid/media/PlayerBase;->playerSetVolume(FF)V

    .line 167
    iget v4, p0, Landroid/media/PlayerBase;->mAuxEffectSendLevel:F

    invoke-virtual {p0, v4}, Landroid/media/PlayerBase;->playerSetAuxEffectSendLevel(F)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 150
    :cond_0
    :goto_2
    return-void

    .restart local v2    # "mode":I
    :cond_1
    move v4, v5

    .line 156
    goto :goto_0

    .line 157
    .end local v2    # "mode":I
    :catch_0
    move-exception v0

    .line 158
    .local v0, "e":Landroid/os/RemoteException;
    iput-boolean v5, p0, Landroid/media/PlayerBase;->mHasAppOpsPlayAudio:Z

    goto :goto_1

    .line 169
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_2
    const/4 v4, 0x0

    const/4 v5, 0x0

    :try_start_2
    invoke-virtual {p0, v4, v5}, Landroid/media/PlayerBase;->playerSetVolume(FF)V

    .line 170
    const/4 v4, 0x0

    invoke-virtual {p0, v4}, Landroid/media/PlayerBase;->playerSetAuxEffectSendLevel(F)I
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_2

    .line 173
    :catch_1
    move-exception v1

    .local v1, "e":Ljava/lang/Exception;
    goto :goto_2
.end method
