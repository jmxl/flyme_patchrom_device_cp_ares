.class public final Lcom/android/server/ZsPermissionDialogReqQueue$ZsPermissionDialogReq;
.super Ljava/lang/Object;
.source "ZsPermissionDialogReqQueue.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/ZsPermissionDialogReqQueue;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "ZsPermissionDialogReq"
.end annotation


# instance fields
.field mHasResult:Z

.field mResult:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 66
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/ZsPermissionDialogReqQueue$ZsPermissionDialogReq;->mHasResult:Z

    .line 40
    return-void
.end method


# virtual methods
.method public get()I
    .locals 4

    .prologue
    .line 51
    monitor-enter p0

    .line 52
    :cond_0
    :goto_0
    :try_start_0
    iget-boolean v1, p0, Lcom/android/server/ZsPermissionDialogReqQueue$ZsPermissionDialogReq;->mHasResult:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v1, :cond_1

    .line 54
    const-wide/16 v2, 0x2ee0

    :try_start_1
    invoke-virtual {p0, v2, v3}, Lcom/android/server/ZsPermissionDialogReqQueue$ZsPermissionDialogReq;->wait(J)V

    .line 55
    iget-boolean v1, p0, Lcom/android/server/ZsPermissionDialogReqQueue$ZsPermissionDialogReq;->mHasResult:Z

    if-nez v1, :cond_0

    .line 56
    const-string/jumbo v1, "ZsPermissionDialogReqQueue"

    const-string/jumbo v2, "get time expired"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 57
    const/4 v1, 0x1

    monitor-exit p0

    return v1

    :cond_1
    monitor-exit p0

    .line 63
    iget v1, p0, Lcom/android/server/ZsPermissionDialogReqQueue$ZsPermissionDialogReq;->mResult:I

    return v1

    .line 51
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1

    .line 59
    :catch_0
    move-exception v0

    .local v0, "e":Ljava/lang/InterruptedException;
    goto :goto_0
.end method

.method public set(I)V
    .locals 3
    .param p1, "res"    # I

    .prologue
    .line 42
    monitor-enter p0

    .line 43
    const/4 v0, 0x1

    :try_start_0
    iput-boolean v0, p0, Lcom/android/server/ZsPermissionDialogReqQueue$ZsPermissionDialogReq;->mHasResult:Z

    .line 44
    iput p1, p0, Lcom/android/server/ZsPermissionDialogReqQueue$ZsPermissionDialogReq;->mResult:I

    .line 45
    const-string/jumbo v0, "ZsPermissionDialogReqQueue"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "set...."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/android/server/ZsPermissionDialogReqQueue$ZsPermissionDialogReq;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 46
    invoke-virtual {p0}, Lcom/android/server/ZsPermissionDialogReqQueue$ZsPermissionDialogReq;->notifyAll()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    .line 41
    return-void

    .line 42
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
